## To prune a model:
`python prune.py --rho 0.001`
Adjust `rho` for different pruning ratios. Larger `rho`, larger compression ratio.

## Extract Subnet
`python extract_subnet.py --dir output/train_D_orig_beta100000.0_rho0.001_lcvgg_relu1_2_adam_lr0.001_sgd_lr0.1_epoch100_de50_batch16 --load-epoch 99 --gpu 0` 

## Retrain subnetwork
`CUDA_VISIBLE_DEVICES=0 python cp_ticket.py --dir train_D_orig_beta100000.0_rho0.001_lcvgg_relu1_2_adam_lr0.001_sgd_lr0.1_epoch100_de50_batch16 --load-epoch 99` 