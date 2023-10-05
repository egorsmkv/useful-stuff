# Install NeMo toolkit using Anaconda

```
conda create -n nemo -c pytorch -c nvidia -c conda-forge python=3.10 numba=0.57.1 cudatoolkit=11.8 cuda-python=11.8 pytorch torchvision torchaudio pytorch-cuda=11.8 cython
conda activate nemo

pip install nemo-toolkit[all]>=1.20.0
```
