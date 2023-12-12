#!/bin/sh
### General options
### –- specify queue --
#BSUB -q gpuv100
###BSUB -R "select[gpu40gb]"
### -- set the job Name --
#BSUB -J Drone
### -- ask for number of cores (default: 1) --
#BSUB -n 8
### -- specify that the cores must be on the same host --
#BSUB -R "span[hosts=1]"
### -- Select the resources: 1 gpu in exclusive process mode --
#BSUB -gpu "num=1:mode=exclusive_process"
### -- set walltime limit: hh:mm --  maximum 24 hours for GPU-queues right now
#BSUB -W 24:00
# request 40GB of system-memory
#BSUB -R "rusage[mem=20GB]"
### -- set the email address --
# please uncomment the following line and put in your e-mail address,
# if you want to receive e-mail notifications on a non-default address
#BSUB -u s212645@student.dtu.dk
### -- send notification at start --
#BSUB -B
### -- send notification at completion--
#BSUB -B
### -- Specify the output and error file. %J is the job-id --
### -- -o and -e mean append, -oo and -eo mean overwrite --
#BSUB -o Drone%J.out
#BSUB -e Drone%J.err
# -- end of LSF options --
nvidia-smi
module load cuda/11.8
module load cudnn/v8.9.1.23-prod-cuda-11.X 
module load matlab/R2022b
cd /zhome/02/b/164706/
source ./miniconda3/bin/activate
conda activate pytorch113
cd /zhome/02/b/164706/Master_Courses/2023_Fall/SpecialCourseDrone/
export PYTHONUNBUFFERED=1
python -u PPO_main.py --version Dronesimscape_2022b.slx