#!/bin/bash

# Start a Flower server
# python3 -m server.server \
#   --rounds=10 \
#   --epochs=1 \
#   --sample_fraction=0.3 \
#   --min_sample_size=1 \
#   --min_num_clients=1 \
#   --strategy='FED_AVG'  \
#   --learning_rate=0.001

python3 -m server.server \
  --rounds=10 \
  --epochs=1 \
  --sample_fraction=0.3 \
  --min_sample_size=1 \
  --min_num_clients=1 \
  --strategy='FED_META_SGD'  \
  --alpha=0.01 \
  --beta=0.1