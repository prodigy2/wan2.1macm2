Wan2.1 Installation Script
This repository contains an installation script for setting up Wan2.1, a powerful AI-driven Text-to-Video (T2V) framework. Wan2.1 uses deep learning models to generate videos from text prompts, allowing users to create dynamic visual content based on simple descriptions.

While the main Wan2.1 repository contains the model and code for video generation, this repository provides an easy way to set up the environment, install dependencies, and get started with generating videos using the Wan2.1-T2V-1.3B model.

Features
Text-to-Video Generation: Create videos based on text descriptions.
AI-powered: Uses deep learning models to transform prompts into video sequences.
Customizable Prompts: Adjust the description, video size, and number of frames to generate different types of videos.
Simple Installation: Easily set up the environment with minimal steps using a bash script.
Setup Guide
The installation script automates the setup process for installing Wan2.1 and all the required dependencies. To get started, follow these steps:

Clone this repository:


git clone https://github.com/yourusername/wan2.1-install.git
cd wan2.1-install
Run the installation script: This will clone the Wan2.1 repository, create a Python virtual environment, install dependencies, and download the necessary model checkpoints.


./install_wan.sh
Generate videos: Once the installation is complete, you can generate videos by running the following command:


python generate.py --prompt "A sunset on the beach with waves crashing" --frame_num 120 --size "720*1280" --ckpt_dir ./Wan2.1-T2V-1.3B --save_file ./video.mp4
This will generate a 120-frame video and save it as video.mp4 in the current directory.

Requirements
Python 3.7+
pip
Homebrew (for macOS users)
Xcode command line tools (macOS)
Hugging Face CLI for model downloading
License
This script is provided for ease of installation and use of the Wan2.1 framework. Wan2.1 is a third-party project and is licensed under its own terms (please refer to the original repository for more details).

