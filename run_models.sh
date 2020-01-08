# we change the size of the training size
python single_dialog.py --output_csv_file 'train_size.csv' --model_id 'a'  --task_id 5 --training_size 1    --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'train_size.csv' --model_id 'b'  --task_id 5 --training_size 0.7  --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'train_size.csv' --model_id 'c'  --task_id 5 --training_size 0.5  --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'train_size.csv' --model_id 'd'  --task_id 5 --training_size 0.3  --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'train_size.csv' --model_id 'e'  --task_id 5 --training_size 0.1  --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'train_size.csv' --model_id 'f'  --task_id 5 --training_size 0.05 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'train_size.csv' --model_id 'g'  --task_id 5 --training_size 0.01 --epochs 100 --train True --interactive False &

# we change the number of hops
python single_dialog.py --output_csv_file 'hops.csv' --model_id 'h'  --task_id 5 --training_size 1 --hops 1 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'hops.csv' --model_id 'i'  --task_id 5 --training_size 1 --hops 2 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'hops.csv' --model_id 'j'  --task_id 5 --training_size 1 --hops 3 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'hops.csv' --model_id 'k'  --task_id 5 --training_size 1 --hops 4 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'hops.csv' --model_id 'l'  --task_id 5 --training_size 1 --hops 5 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'hops.csv' --model_id 'm'  --task_id 5 --training_size 1 --hops 6 --epochs 100 --train True --interactive False &

# we change the batch size
python single_dialog.py --output_csv_file 'batch_size.csv' --model_id 'n'  --task_id 5 --training_size 1  --batch_size 1 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'batch_size.csv' --model_id 'o'  --task_id 5 --training_size 1  --batch_size 8 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'batch_size.csv' --model_id 'p'  --task_id 5 --training_size 1  --batch_size 16 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'batch_size.csv' --model_id 'q'  --task_id 5 --training_size 1  --batch_size 32 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'batch_size.csv' --model_id 'r'  --task_id 5 --training_size 1  --batch_size 64 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'batch_size.csv' --model_id 's'  --task_id 5 --training_size 1  --batch_size 128 --epochs 100 --train True --interactive False &
python single_dialog.py --output_csv_file 'batch_size.csv' --model_id 't'  --task_id 5 --training_size 1  --batch_size 256 --epochs 100 --train True --interactive False &