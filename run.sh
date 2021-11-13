#!/bin/bash

# - strategy:
#     - FedAvg
#     - FedMetaMAML
#     - FedAvgMeta
#     - FedMetaSGD

# - model:
#     - femnist
#     - shakespeare
#     - sent140

python main.py \
    --num_clients=10 \
    --num_eval_clients=5 \
    --rounds=10 \
    --epochs=1 \
    --batch_size=32 \
    --fraction_fit=0.1 \
    --fraction_eval=0.1 \
    --min_fit_clients=2 \
    --min_eval_clients=2 \
    --min_available_clients=2 \
    --alpha=0.01 \
    --beta=0.001 \
    --strategy_client='FedMetaSGD' \
    --model='sent140' \
    --mode='train'