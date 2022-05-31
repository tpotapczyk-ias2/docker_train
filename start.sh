#!/bin/bahs

if test -f "data/processed.txt"; then
	        echo "Already preprocessed"
else

onmt_preprocess \
     --overwrite \
     --shard_size 300000 \
     --num_threads 16 \
    --src_vocab_size 32000 \
    --tgt_vocab_size 32000 \
    --valid_src data/src_valid_tokenized.txt \
    --valid_tgt data/tgt_valid_tokenized.txt \
    --train_src data/src_train_tokenized.txt \
    --train_tgt data/tgt_train_tokenized.txt \
    --save_data data/processed.txt 

fi
onmt_train \
        --data data/processed.txt \
        --gpu_ranks 0 \
        --tensorboard --save_model data/checkpoints/checkpoint \
        --log_file_level INFO \
        --tensorboard_log_dir data/log \
        --log_file  data/log_INFO
