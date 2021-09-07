## To prune a model:
`python prune.py --rho 0.0001`

Adjust `rho` for different pruning ratios. Larger `rho`, larger compression ratio.

## Extract Subnet
`python extract_subnet.py --dir output/train_D_orig_beta100000.0_rho0.001_lcvgg_relu1_2_adam_lr0.001_sgd_lr0.1_epoch100_de50_batch16 --load-epoch 99 --gpu 0` 

## Retrain subnetwork
`CUDA_VISIBLE_DEVICES=0 python cp_ticket.py --dir output/train_D_orig_beta100000.0_rho0.001_lcvgg_relu1_2_adam_lr0.001_sgd_lr0.1_epoch100_de50_batch16 --load-epoch 99 -gen_bs 128 -dis_bs 64 --dataset cifar10 --img_size 32 --max_iter 50000 --model sngan_cifar10 --latent_dim 128 --gf_dim 256 --df_dim 128 --g_spectral_norm False --d_spectral_norm True --g_lr 0.00015 --d_lr 0.0002 --beta1 0.0 --beta2 0.9 --init_type xavier_uniform --n_critic 5 --val_freq 20 --exp_name sngan_cifar10_ticket_1e-3_bs16` 