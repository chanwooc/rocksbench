#!/usr/bin/env bash
iostat -d 2 -x -k sda | grep --color 'Device.*' -A 1
