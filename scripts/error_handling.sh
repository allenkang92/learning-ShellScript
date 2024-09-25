#!/bin/bash

# 오류 발생 시 실행될 함수
handle_error() {
	echo "오류가 발생했습니다: $1"
	echo "스크립트를 종료합니다."
	exit 1
}

# 오류 발생 시 handle_error 함수를 호출하도록 trap 설정
trap 'handle_error "$BASH_COMMAND"' ERR

# 존재하지 않는 파일을 읽으려고 시도
echo "존재하지 않는 파일의 내용:"
cat non_existent_file.txt

# 이 줄은 실행되지 않습니다
echo " 이 메시지는 출력되지 않을 것입니다."

