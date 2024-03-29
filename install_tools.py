#!/bin/python3

import os
import subprocess
import shutil

def run(command):
    output = subprocess.run(command.split(' '), text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if output.stderr != '':
        print(output.stderr)
    return output.stdout.strip('\n')

def linux_distribution():
    return run('lsb_release -a')

os_type = run('uname -s')
distro = linux_distribution()


def download(url, path) -> str:
    filename = path + os.path.basename(url)
    wget = f'wget -nc -O {filename} {url}'
    run(wget)
    return filename

def extract(file_name, extract_dir=""):
    shutil.unpack_archive(file_name, extract_dir)

def move(src, destination):
    shutil.move(src, destination)

def install(program):

    print('Installing ->', program)
    if os_type == "Linux":
        
        if 'Manjaro' in distro:
            run(f'pacman --needed --noconfirm -S {program}')
        elif 'Ubuntu' in distro:
            run(f'apt install {program}')
        else:
            raise Exception('Unsupported distribution')

    elif os_type == "Darwin":
        run(f'brew install {program}')
    else:
        raise Exception('Unsupported OS')

def configure_keyboard():
    print()
    # cp 00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf

def main():
    print("Applying secret sauces")
    print("Detected OS:", os_type)
    print("Detected distro:", distro)

    TEMP_PATH = "/tmp/"
    BIN_PATH = "/usr/local/bin" if os.getenv('INSTALL_DIR') == '' else os.getenv('INSTALL_DIR')

    # Setup noti
    noti_path = download("https://github.com/variadico/noti/releases/download/3.5.0/noti3.5.0.linux-amd64.tar.gz", TEMP_PATH)
    extract(noti_path, BIN_PATH)
    
    install('ripgrep')

main()
