python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/no_mod --new_heldout_type 'no_mod'
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/w_n --new_heldout_type '[w_n]'
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/w_n_randn --new_heldout_type '[w_n]_randn' --seed 1000
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/w_n_space_prepended --initial_extra_space 'only_initial_novel_word'
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/w_n_all_space_prepended --initial_extra_space 'all_initial_words'
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/w_n_space_prepended_oversampled --initial_extra_space 'only_initial_novel_word' --oversample_exposure_examples
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/w_n_all_space_prepended_oversampled --initial_extra_space 'all_initial_words' --oversample_exposure_examples
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/w_n_randn_space_prepended_oversampled --new_heldout_type '[w_n]_randn' --initial_extra_space 'only_initial_novel_word' --oversample_exposure_examples --seed 1000
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_str --new_heldout_type random_str --seed 555
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_str_shorter --new_heldout_type random_str_shorter --seed 666
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_cvcv_str --new_heldout_type random_cvcv_str --seed 777
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_cvcv_str_shorter --new_heldout_type random_cvcv_str_shorter --seed 888
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_cvcv_str_cons_reduced --new_heldout_type random_cvcv_str_cons_reduced --seed 999
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_cvcv_str_cons_reduced_shorter --new_heldout_type random_cvcv_str_cons_reduced_shorter --seed 9999

python ../utils/convert_cogs_to_json.py --input_path ../data/no_mod/ --output_path ../data/no_mod
python ../utils/convert_cogs_to_json.py --input_path ../data/w_n/ --output_path ../data/w_n
python ../utils/convert_cogs_to_json.py --input_path ../data/w_n_randn/ --output_path ../data/w_n_randn
python ../utils/convert_cogs_to_json.py --input_path ../data/w_n_space_prepended/ --output_path ../data/w_n_space_prepended
python ../utils/convert_cogs_to_json.py --input_path ../data/w_n_all_space_prepended/ --output_path ../data/w_n_all_space_prepended
python ../utils/convert_cogs_to_json.py --input_path ../data/w_n_space_prepended_oversampled/ --output_path ../data/w_n_space_prepended_oversampled
python ../utils/convert_cogs_to_json.py --input_path ../data/w_n_randn_space_prepended_oversampled/ --output_path ../data/w_n_randn_space_prepended_oversampled
python ../utils/convert_cogs_to_json.py --input_path ../data/w_n_all_space_prepended_oversampled/ --output_path ../data/w_n_all_space_prepended_oversampled
python ../utils/convert_cogs_to_json.py --input_path ../data/random_str/ --output_path ../data/random_str
python ../utils/convert_cogs_to_json.py --input_path ../data/random_str_shorter/ --output_path ../data/random_str_shorter
python ../utils/convert_cogs_to_json.py --input_path ../data/random_cvcv_str --output_path ../data/random_cvcv_str
python ../utils/convert_cogs_to_json.py --input_path ../data/random_cvcv_str_shorter --output_path ../data/random_cvcv_str_shorter
python ../utils/convert_cogs_to_json.py --input_path ../data/random_cvcv_str_cons_reduced --output_path ../data/random_cvcv_str_cons_reduced
python ../utils/convert_cogs_to_json.py --input_path ../data/random_cvcv_str_cons_reduced_shorter --output_path ../data/random_cvcv_str_cons_reduced_shorter
