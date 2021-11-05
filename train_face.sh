#!/usr/bin/env bash

nohup python3 train.py \
	--name celebahqedge_ot \
	--dataset_mode celebahqedge \
	--dataroot '/root/code/SYTR/UNITE/data/Dataset/CelebAMask-HQ' \
	--checkpoints_dir '/root/code/SYTR/UNITE/checkpoints' \
	--correspondence 'ot' \
	--niter 30 \
	--niter_decay 30 \
	--which_perceptual 4_2 \
	--weight_perceptual 0.001 \
	--use_attention \
	--maskmix \
	--PONO \
	--PONO_C \
	--vgg_normal_correct \
	--fm_ratio 1.0 \
	--warp_bilinear \
	--warp_cycle_w 1 \
	--batchSize 3 \
	--gpu_ids 0 \
	--ot_weight \
	--continue_train \
	--which_epoch 20 \
	1>train_face.out 2>&1 &