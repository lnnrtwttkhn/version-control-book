#!/bin/bash

ssh-keygen -t ed25519 -C "your_email@example.com" # <1>
cat ~/.ssh/id_ed25519.pub # <2>
# Copy the SSh key to your account # <3>