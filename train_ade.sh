#!/bin/bash

# srun -p dsta --mpi=pmi2 \
# --gres=gpu:1 -n1 \
# --ntasks-per-node=1 \
# --job-name=tip_ade20k \
# --kill-on-bad-exit=1 \
# -w SG-IDC1-10-51-2-37 \

nohup python3 train.py \
	--name ade20k \
	--dataset_mode ade20k \
	--dataroot 'datasets/ADEChallengeData2016' \
	--correspondence 'ot' \
	--display_freq 1000 \
	--niter 150 \
	--niter_decay 150 \
	--maskmix \
	--use_attention \
	--warp_mask_losstype direct \
	--weight_mask 100.0 \
	--PONO \
	--PONO_C \
	--use_coordconv \
	--adaptor_nonlocal \
	--ctx_w 1.0 \
	--batchSize 2 \
	--gpu_ids 0  \
	1>train_ade.out 2>&1 &#\
	# --continue_train
#	--which_epoch 10
#	--checkpoints_dir '/data/vdd/fangneng.zfn/UNITE+/checkpoints' \
#-o file.out -e file.err