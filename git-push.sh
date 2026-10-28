#!/bin/bash

# 1. Prompt for a commit message
read -p "Enter commit message: " msg

# 2. Check if a message was provided; if empty, use a default timestamp
if [ -z "$msg" ]; then
  msg="Auto-commit on $(date +'%Y-%m-%d %H:%M:%S')"
fi

# 3. Execute the Git commands sequence
git add . && \
git commit -m "$msg" && \
git push