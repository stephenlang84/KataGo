#!/bin/bash

# Check if ../cpp/generated directory exists
if [ ! -d "cpp/generated" ]; then
    mkdir -p "cpp/generated"
fi

pwd

# Function to convert a file to a .h file using xxd
convert_to_header() {
    local input_file=$1
    local output_file=$2

    xxd -i "$input_file" > "$output_file"
}

# Convert gxxx.bin.gz files
convert_to_header "cpp/tests/models/g170e-b10c128-s1141046784-d204142634.bin.gz" "cpp/generated/g170e-b10c128.h"

# Convert xxx.cfg files
convert_to_header "cpp/configs/gtp_example.cfg" "cpp/generated/gtp_example.h"
