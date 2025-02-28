#!/bin/bash

# Clone the Wan2.1 repository
git clone https://github.com/Wan-Video/Wan2.1.git

# Navigate to the project directory
cd Wan2.1

# Create a Python virtual environment
python3 -m venv wan_env

# Activate the virtual environment
source wan_env/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install required dependencies
pip install -r requirements.txt

# Install PyTorch and related libraries
pip install torch torchvision torchaudio

# If needed, install PyTorch for CPU usage
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

# Update Homebrew and upgrade installed packages
brew update && brew upgrade

# Install Xcode command line tools
xcode-select --install

# Install PyTorch and related libraries again if needed
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

# Install the einops library
pip install einops

# Install Hugging Face CLI tool
pip install "huggingface_hub[cli]"

# Download the Wan model using Hugging Face CLI, specifying the checkpoint directory
huggingface-cli download Wan-AI/Wan2.1-T2V-1.3B --local-dir ./Wan2.1-T2V-1.3B

# Generate the video, passing the checkpoint directory
python generate.py --prompt "A sunset on the beach with waves crashing" --frame_num 120 --size "720*1280" --ckpt_dir ./Wan2.1-T2V-1.3B --save_file ./video.mp4

