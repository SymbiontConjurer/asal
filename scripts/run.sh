#!/usr/bin/env bash
python main_opt.py \
    --seed=1 \
    --save_dir="./data/supervised_0" \
    --substrate='lenia' \
    --time_sampling=1 \
    --prompts="a smiley face" \
    --coef_prompt=1. \
    --coef_softmax=0. \
    --coef_oe=0. \
    --bs=1 \
    --pop_size=32 \
    --rollout_steps=100 \
    --n_iters=10000 \
    --sigma=0.1
