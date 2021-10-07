

CUDA_VISIBLE_DEVICES=4 nohup python train_impgd.py --model sngan_cifar10 --exp_name sngan_cifar10 --init-path initial_weight_1 --load-path logs/sngan_cifar10_2021_08_24_01_28_02 --random_seed 1 --use-kd-D > 1007_impgdkd_GPU4.out &

CUDA_VISIBLE_DEVICES=5 nohup python train_impgd.py --model sngan_cifar10 --exp_name sngan_cifar10 --init-path initial_weight_2 --load-path logs/sngan_cifar10_2021_08_24_01_28_00 --random_seed 2 --use-kd-D > 1007_impgdkd_seed2_GPU5.out &

CUDA_VISIBLE_DEVICES=6 nohup python train_impgd.py --model sngan_cifar10 --exp_name sngan_cifar10 --init-path initial_weight_3 --load-path logs/sngan_cifar10_2021_08_24_04_58_12 --random_seed 3 --use-kd-D > 1007_impgdkd_seed3_GPU6.out &

CUDA_VISIBLE_DEVICES=7 nohup python train_impgd.py --model sngan_cifar10 --exp_name sngan_cifar10 --init-path initial_weight_4 --load-path logs/sngan_cifar10_2021_08_24_01_28_05 --random_seed 4 --use-kd-D > 1007_impgdkd_seed4_GPU7.out &
