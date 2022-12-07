<<'COMMENT'
PyTorch  1.11.0
Python  3.8(ubuntu20.04)
Cuda  11.3
RTX 2080 Ti * 1
显存:11GB
COMMENT

CUDA_VISIBLE_DEVICES=0,1,2,3 python main_gaussian.py --cuda --do_train --do_valid --do_test   --data_path data/KG_data/FB15k-237-betae -n 128 -b 512 -d 400 -g 24   -lr 0.0001 --max_steps 200001 --cpu_num 4 --geo gaussian --valid_steps 15000   -gaussianm "(none,0.02)" --tasks "1p.2p.3p.2i.3i.ip.pi.2u.up"
CUDA_VISIBLE_DEVICES=0,1,2,3 python main_gaussian.py --cuda --do_train --do_valid --do_test   --data_path data/KG_data/NELL-q2b -n 128 -b 512 -d 400 -g 24   -lr 0.0001 --max_steps 200001 --cpu_num 4 --geo gaussian --valid_steps 15000   -gaussianm "(none,0.02)" --tasks "1p.2p.3p.2i.3i.ip.pi.2u.up"
CUDA_VISIBLE_DEVICES=0,1,2,3 python main_gaussian.py --cuda --do_train --do_valid --do_test   --data_path data/KG_data/FB15k-237-q2b -n 128 -b 512 -d 400 -g 24   -lr 0.0001 --max_steps 200001 --cpu_num 4 --geo gaussian --valid_steps 15000   -gaussianm "(none,0.02)" --tasks "1p.2p.3p.2i.3i.ip.pi.2u.up"
CUDA_VISIBLE_DEVICES=0,1,2,3 python main_gaussian.py --cuda --do_train --do_valid --do_test   --data_path data/KG_data/NELL-betae -n 128 -b 512 -d 400 -g 24   -lr 0.0001 --max_steps 200001 --cpu_num 4 --geo gaussian --valid_steps 15000   -gaussianm "(none,0.02)" --tasks "1p.2p.3p.2i.3i.ip.pi.2u.up"

# 命令行一条命令，batch size 为 7
CUDA_VISIBLE_DEVICES=0 python main_gaussian.py --cuda --do_train --do_valid --do_test   --data_path data/KG_data/NELL-betae -n 128 -b 7 -d 400 -g 24   -lr 0.0001 --max_steps 200001 --cpu_num 4 --geo gaussian --valid_steps 15000   -gaussianm "(none,0.02)" --tasks "1p.2p.3p.2i.3i.ip.pi.2u.up"