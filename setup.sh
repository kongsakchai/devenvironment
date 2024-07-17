#!/bin/bash

# ตรวจสอบว่ามี argument ส่งเข้ามาหรือไม่
if [ -z "$1" ]; then
  echo "No argument supplied"
  exit 1
fi

# ตรวจสอบว่า shell ที่ใช้อยู่คือ bash หรือ zsh
if [ "$SHELL" = "/bin/bash" ] || [ "$SHELL" = "/usr/bin/bash" ]; then
  echo -e "\n# My Path \nexport DEV=$1" >> ~/.bashrc
  echo -e "source $1/workspaces/script.sh" >> ~/.bashrc
  export DEV=$1
elif [ "$SHELL" = "/bin/zsh" ] || [ "$SHELL" = "/usr/bin/zsh" ]; then
  echo -e "\n# My Path \nexport DEV=$1" >> ~/.zshrc
  echo -e "source $1/workspaces/script.sh" >> ~/.zshrc
  export DEV=$1
else
  echo "Unsupported shell: $SHELL"
  exit 1
fi
