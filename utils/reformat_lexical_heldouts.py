"""Reformats COGS dataset with different variations of held-out lexical items."""

import argparse
import os
import string
import random

# Prespecified set of file names in the COGS dataset.
_DATASET_FILENAMES = ['train', 'test', 'dev', 'gen', 'train_100']
_HELD_OUT_VOCAB_MAP = {
    'hedgehog': '[w_0]',
    'shark': '[w_1]',
    'cockroach': '[w_2]',
    'Lina': '[w_3]',
    'Paula': '[w_4]',
    'Charlie': '[w_5]',
    'baked': '[w_6]',
    'bake': '[w_7]',
    'shattered': '[w_8]',
    'shatter': '[w_9]',
    'crawl': '[w_10]',
    'cobra': '[w_11]',
    'hippo': '[w_12]',
    'blessed': '[w_13]',
    'bless': '[w_14]',
    'squeezed': '[w_15]',
    'squeeze': '[w_16]',
    'teleported': '[w_17]',
    'teleport': '[w_18]',
    'shipped': '[w_19]',
    'ship': '[w_20]'
}
_RANDOM_STR_LENS = range(15, 30)
_RANDOM_STR_LENS_SHORTER = range(7, 15)
_CONSONANTS = 'bcdfghjklmnpqrstvwxyz'
_CONSONANTS_SET2 = 'bcdfghklmnprstvwz'
_VOWELS = 'aeiou'

def main():
    parser = argparse.ArgumentParser()

    parser.add_argument('--input_path', default=None, type=str, required=True,
                        help='Path to directory containing the COGS dataset.')
    parser.add_argument('--output_path', default=None, type=str, required=True,
                        help='Path to save the output data to.')
    parser.add_argument('--new_heldout_type', default='[w_n]', type=str,
                        choices=['[w_n]', 'random_str', 'random_str_shorter',
                                 'random_phonological_str', 'random_phonological_str_shorter',
                                 'random_phonological_str_cons_reduced', 'random_phonological_str_cons_reduced_shorter'],
                        help='Type of replacement for the held-out lexical items.')
    parser.add_argument('--initial_extra_space', default='no_space', type=str,
                        choices=['no_space', 'only_initial_novel_word', 'all_initial_words'],
                        help='Random seed for random character sampling.')
    parser.add_argument('--seed', default=555, type=int,
                        help='Random seed for random character sampling.')
    args = parser.parse_args()

    # Create a new directory if the specified output path does not exist.
    os.makedirs(args.output_path, exist_ok=True)

    random.seed(args.seed)
    vocab_map = None

    if args.new_heldout_type == '[w_n]':
        vocab_map = _HELD_OUT_VOCAB_MAP
    elif args.new_heldout_type.startswith('random_str'):
        vocab_map = {}
        for key in _HELD_OUT_VOCAB_MAP.keys():
            if args.new_heldout_type == 'random_str':
                word_len = random.choice(_RANDOM_STR_LENS) 
            else:
                word_len = random.choice(_RANDOM_STR_LENS_SHORTER)
            new_word = ''
            for _ in range(word_len):
                new_word += random.choice(string.ascii_letters).lower()
            vocab_map[key] = new_word
    elif args.new_heldout_type.startswith('random_phonological_str'):
        vocab_map = {}
        for key in _HELD_OUT_VOCAB_MAP.keys():
            if args.new_heldout_type.endswith('shorter'):
                word_len = random.choice(_RANDOM_STR_LENS_SHORTER)
            else:
                word_len = random.choice(_RANDOM_STR_LENS)
            if 'cons_reduced' in args.new_heldout_type:
                consonant_set = _CONSONANTS_SET2
            else:
                consonant_set = _CONSONANTS
            new_word = ''
            for i in range(word_len):
                if i % 2 == 0:
                    new_word += random.choice(consonant_set)
                else:
                    new_word += random.choice(_VOWELS)
            vocab_map[key] = new_word
    else:
        raise NotImplementedError

    print(vocab_map)
    for filename in _DATASET_FILENAMES:
        lines_to_write = []
        with open(os.path.join(args.input_path, f'{filename}.tsv')) as f:
            for line in f:
                source, target, gen_type = line.rstrip('\n').split('\t')
                source = ' '.join([vocab_map.get(w, w) for w in source.split()])
                target = ' '.join([vocab_map.get(w, w) for w in target.split()])
                if args.new_heldout_type == '[w_n]':
                    if args.initial_extra_space == 'all_initial_words':
                        source = ' ' + source
                        target = ' ' + target
                    elif args.initial_extra_space == 'only_initial_novel_word':
                        if source.startswith('[w_'):
                            source = ' ' + source
                        if target.startswith('[w_'):
                            target = ' ' + target

                lines_to_write.append(f'{source}\t{target}\t{gen_type}\n')

        with open(os.path.join(args.output_path, f'{filename}.tsv'), 'w') as wf:
            wf.writelines(lines_to_write)


    print(f'Reformatted and saved COGS data for T5 to {args.output_path}.')

    with open(os.path.join(args.output_path, 'added_vocab.txt'), 'w') as wf:
        for vocab in vocab_map.values():
            wf.write(f'{vocab}\n')


if __name__ == '__main__':
    main()
