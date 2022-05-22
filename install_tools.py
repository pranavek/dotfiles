import os
import subprocess
import shutil

def run(command):
    return subprocess.run(command.split(' '), stdout=subprocess.PIPE, stderr=subprocess.PIPE)

def download(url, path) -> str:
    filename = path + os.path.basename(url)
    wget = f'wget -nc -O {filename} {url}'
    run(wget)
    return filename

def extract(file_name, extract_dir=""):
    shutil.unpack_archive(file_name, extract_dir)

def move(src, destination):
    shutil.move(src, destination)

def main():
    print("Applying secret sauces")

    TEMP_PATH = "/tmp/"
    BIN_PATH = "~/.local/bin"

    # Setup noti
    file_path = download("https://github.com/variadico/noti/releases/download/3.5.0/noti3.5.0.linux-amd64.tar.gz", TEMP_PATH)
    extract(file_path, BIN_PATH)

main()
