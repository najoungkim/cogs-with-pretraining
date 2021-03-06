python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/w_n
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_str --new_heldout_type random_str --seed 555
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_str_shorter --new_heldout_type random_str_shorter --seed 666
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_cvcv_str --new_heldout_type random_cvcv_str --seed 777
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_cvcv_str_shorter --new_heldout_type random_cvcv_str_shorter --seed 888
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_cvcv_str_cons_reduced --new_heldout_type random_cvcv_str_cons_reduced --seed 999
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_cvcv_str_cons_reduced_shorter --new_heldout_type random_cvcv_str_cons_reduced_shorter --seed 9999


python ../utils/convert_cogs_to_json.py --input_path ../data/w_n/ --output_path ../data/w_n
python ../utils/convert_cogs_to_json.py --input_path ../data/random_str/ --output_path ../data/random_str
python ../utils/convert_cogs_to_json.py --input_path ../data/random_str_shorter/ --output_path ../data/random_str_shorter
python ../utils/convert_cogs_to_json.py --input_path ../data/random_cvcv_str --output_path ../data/random_cvcv_str
python ../utils/convert_cogs_to_json.py --input_path ../data/random_cvcv_str_shorter --output_path ../data/random_cvcv_str_shorter
python ../utils/convert_cogs_to_json.py --input_path ../data/random_cvcv_str_cons_reduced --output_path ../data/random_cvcv_str_cons_reduced
python ../utils/convert_cogs_to_json.py --input_path ../data/random_cvcv_str_cons_reduced_shorter --output_path ../data/random_cvcv_str_cons_reduced_shorter
