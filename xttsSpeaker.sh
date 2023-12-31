#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <speaker_name>"
    exit 1
fi

# Assign the input parameter to a variable
speaker_name="$1"

# Set the path to the TTS model
model_name="tts_models/multilingual/multi-dataset/xtts_v2"

# Set the input text
text="Hello World! This is a test for speech synthesis in english. Do you like it?"

# Set the language index
language_idx="en"

# Set the CUDA usage flag
use_cuda=1

# Set the output path
out_path="/mnt/d/AiVoice/xtts/${speaker_name}.wav"

# Run the TTS command
tts --model_name "$model_name" --text "$text" --speaker_idx="$speaker_name" --language_idx="$language_idx" --use_cuda "$use_cuda" --out_path "$out_path"

echo "Speech synthesis completed. Output saved to: $out_path"

