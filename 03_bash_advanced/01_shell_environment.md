# Shell Environment

Bash 쉘의 환경을 설정하는 것은 작업 효율성을 높이고 개인화된 작업 환경을 만드는 데 중요합니다. 이 섹션에서는 Bash 쉘 환경 설정의 주요 요소들을 살펴보겠습니다.

## 환경 변수

환경 변수는 쉘 세션 전체에서 사용할 수 있는 변수입니다. 주요 환경 변수와 그 설정 방법을 알아봅시다.

### PATH 변수

PATH 변수는 실행 파일을 찾을 디렉토리 목록을 지정합니다.

```bash
# PATH 변수 확인
echo $PATH

# PATH 변수에 새 경로 추가
export PATH=$PATH:/new/directory
```

### HOME 변수

사용자의 홈 디렉토리를 지정합니다.

```bash
echo $HOME
```

### PS1 변수

쉘 프롬프트의 모양을 정의합니다.

```bash
# 기본 프롬프트 설정
export PS1="\u@\h:\w\$ "
```

## 쉘 설정 파일

Bash 쉘은 시작할 때 특정 파일들을 읽어 환경을 설정합니다.

### ~/.bashrc

대화형 비-로그인 쉘에서 실행되는 스크립트입니다.

```bash
# ~/.bashrc 파일 편집
nano ~/.bashrc

# 별칭 추가 예
alias ll='ls -alF'
```

### ~/.bash_profile

로그인 쉘에서 실행되는 스크립트입니다.

```bash
# ~/.bash_profile 파일 편집
nano ~/.bash_profile

# 환경 변수 설정 예
export EDITOR=vim
```

### /etc/profile

시스템 전체에 적용되는 설정 파일입니다.

## 별칭 (Aliases)

자주 사용하는 명령어에 대한 단축어를 만들 수 있습니다.

```bash
# 별칭 설정
alias update='sudo apt-get update && sudo apt-get upgrade'

# 별칭 목록 보기
alias

# 별칭 제거
unalias update
```

## 함수

복잡한 명령어 시퀀스를 함수로 정의할 수 있습니다.

```bash
# ~/.bashrc 파일에 함수 추가
mkcd() {
    mkdir -p "$1" && cd "$1"
}
```

## 히스토리 설정

명령어 히스토리 관련 설정을 조정할 수 있습니다.

```bash
# 히스토리 크기 설정
HISTSIZE=1000
HISTFILESIZE=2000

# 중복된 명령어 제거
HISTCONTROL=ignoredups
```

이러한 설정들을 활용하면 Bash 쉘 환경을 개인의 필요에 맞게 최적화할 수 있습니다. 설정 변경 후에는 `source ~/.bashrc` 명령어로 변경사항을 적용하거나, 새 터미널 세션을 열어 변경사항을 확인할 수 있습니다.