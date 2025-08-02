#!/bin/sh
set -e

# Loop through TOOL0 to TOOL9
for i in $(seq 0 9); do
    tool_var="TOOL${i}"
    tool_value=$(eval echo \$$tool_var)
    if [ -n "${tool_value}" ]; then
        go install ${tool_value}
    fi
done