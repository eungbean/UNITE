#!/usr/bin/env bash

nohup python3 train.py \
	--name cocolayout \
	--dataset_mode cocolayout \
	--dataroot 'datasets/COCO-Stuff' \
	--checkpoints_dir 'checkpoints' \
	--correspondence 'ot' \
	--display_freq 1000 \
	--novgg_featpair 0.0 \
	--niter 30 \
	--niter_decay 30 \
	--maskmix \
	--use_attention \
	--warp_mask_losstype direct \
	--weight_mask 100.0 \
	--PONO \
	--PONO_C \
	--ctx_w 0.1
	--batchSize 4 \
	--gpu_ids 0  \
	1>train_cocolayout.out 2>&1 &