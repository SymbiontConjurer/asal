#!/usr/bin/env bash
python main_opt.py \
    --seed=2 \
    --save_dir="./data/supervised_0" \
    --substrate='lenia' \
    --time_sampling=1 \
    --prompts="a single long caterpillar" \
    --coef_prompt=1. \
    --coef_softmax=0. \
    --coef_oe=0. \
    --bs=32 \
    --pop_size=32 \
    --rollout_steps=1000 \
    --n_iters=200 \
    --sigma=0.05
