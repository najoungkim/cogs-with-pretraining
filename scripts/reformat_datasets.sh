python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/w_n
python ../utils/reformat_lexical_heldouts.py --input_path ../../COGS/data/ --output_path ../data/random_str --new_heldout_type random_str

python ../utils/convert_cogs_to_json.py --input_path ../data/w_n/ --output_path ../data/w_n
python ../utils/convert_cogs_to_json.py --input_path ../data/random_str/ --output_path ../data/random_str
