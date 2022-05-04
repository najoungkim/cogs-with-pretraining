python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/w_n
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_str --new_heldout_type random_str --seed 555
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_str_shorter --new_heldout_type random_str_shorter --seed 666
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_phonological_str --new_heldout_type random_phonological_str --seed 777
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_phonological_str_shorter --new_heldout_type random_phonological_str_shorter --seed 888

python ../utils/convert_cogs_to_json.py --input_path ../data/w_n/ --output_path ../data/w_n
python ../utils/convert_cogs_to_json.py --input_path ../data/random_str/ --output_path ../data/random_str
python ../utils/convert_cogs_to_json.py --input_path ../data/random_str_shorter/ --output_path ../data/random_str_shorter
python ../utils/convert_cogs_to_json.py --input_path ../data/random_phonological_str --output_path ../data/random_phonological_str
python ../utils/convert_cogs_to_json.py --input_path ../data/random_phonological_str_shorter --output_path ../data/random_phonological_str_shorter
