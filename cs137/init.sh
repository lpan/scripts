#!/bin/bash

## $1 - assignment number
## $2 - question_name

## $1 - dirname
does_dir_exist() {
  if [[ -d "$1" ]]; then
    echo "$1 already exists"
    exit 1
  fi
}

project_name=$1
question_name=$2

question_path="$project_name/$question_name"
make_path="$question_path/Makefile"
file_path="$question_path/$question_name.c"
main_path="$question_path/main.c"

does_dir_exist $question_path

mkdir -p $question_path
touch $main_path
touch $file_path
touch $make_path

cat <<EOT >> $make_path
CC=gcc
filename=$question_name

all: \$(filename).c; \$(CC) -std=c99 main.c \$(filename).c; ./a.out; rm a.out
EOT

cat <<EOT >> $main_path
#include <stdio.h>

int main(void) {
  printf("hello\n");
  return 0;
}
EOT
