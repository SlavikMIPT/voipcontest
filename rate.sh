#!/bin/bash
ffmpeg -y -i $1 -ar 16000 /home/orig.wav
ffmpeg -y -i $2 -ar 16000 /home/degr.wav
pesq +16000 /home/orig.wav /home/degr.wav