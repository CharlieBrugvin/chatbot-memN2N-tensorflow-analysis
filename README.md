# Update 

## Source code update

I have updated the sources from [chatbot-MemN2N-tensorflow](https://github.com/vyraun/chatbot-MemN2N-tensorflow) in order to test the model over different hyper-parameters (the number of training examples, the batch_size & the number of hops).

I have added :
- new command line inputs, to set hyper-parameters and set an id to the model
- the option to set the percentage of training datas used in the training
- the option for models to save on each epochs values such as accuracy and hyper-parameters. 

**I have only updated the `single_dialog.py` file. All modifications are marked with the comment `#cabu`.**

## Use

### command line

Example of commande line to train a model : 
```
python single_dialog.py --output_csv_file 'output.csv' --model_id 'id_1'  --task_id 5 --training_size 0.95  --batch_size 64 --epochs 100 --train True --interactive False &
```
More examples can be found at `/run_models.sh`

### output

On each epoch, a line will be added into the csv file given as parameter. csv files are stored in the `/output` folder. 

This csv line contains :
- the model id & task id
- the batch size
- the number of hops
- the number of epoch planned
- the current epoch
- the date of the epoch (in timestamp and in a human readable form)
- the percentage of training datas used
- The number of examples in the training, validation & test set
- The accuracy made on training, validation & test set

*Note : A csv file can contain multiple models. If model ids are uniques, then [model_id, current_epoch] is a primary key*

### Tests

I have ran 20 models (see `/run_models.sh`) to analyze the impact of the number of training examples, the batch_size & the number of hops.

Outputed csv files can be found at `/output/notebook/metrics`. 
I have presented and interpred the results in a jupyter notebook (`/output/notebook/notebook.ipynb`).

**See the [notebook in html](/output/notebook/notebook.html)**

--------

Original README :

# MemN2N Chatbot in Tensorflow

Implementation of [Learning End-to-End Goal-Oriented Dialog](https://arxiv.org/abs/1605.07683) with sklearn-like interface using Tensorflow. Tasks are from the [bAbl](https://research.facebook.com/research/babi/) dataset. Based on an earlier implementation (can't find the link).

### Install and Run
```
pip install -r requirements.txt
python single_dialog.py
```

### Examples

Train the model

```
python single_dialog.py --train True --task_id 1 --interactive False
```

Running a [single bAbI task](./single_dialog.py) Demo

```
python single_dialog.py --train False --task_id 1 --interactive True
```

These files are also a good example of usage.

### Requirements

* tensorflow
* scikit-learn
* six
* scipy

### Results

Unless specified, the Adam optimizer was used.

The following params were used:
* epochs: 200
* learning_rate: 0.01
* epsilon: 1e-8
* embedding_size: 20


Task  |  Training Accuracy  |  Validation Accuracy  |  Test Accuracy	 
------|---------------------|-----------------------|--------------------
1     |  99.9	            |  99.1		            |  99.3				 
2     |  100                |  100		            |  99.9				 
3     |  96.1               |  71.0		            |  71.1				 
4     |  99.9               |  56.7		            |  57.2				 
5     |  99.9               |  98.4		            |  98.5				 
6     |  73.1               |  49.3		            |  40.6				 
