# 쉘 명령어 치트 시트

자주 사용되는 쉘 명령어들의 빠른 참조를 위함

## 파일 시스템 탐색

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `pwd` | 현재 작업 디렉토리 표시 | `pwd` |
| `ls` | 디렉토리 내용 나열 | `ls`, `ls -l`, `ls -a` |
| `cd` | 디렉토리 변경 | `cd Documents`, `cd ..`, `cd ~` |

## 파일 및 디렉토리 조작

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `mkdir` | 새 디렉토리 생성 | `mkdir new_folder` |
| `touch` | 빈 파일 생성 또는 타임스탬프 업데이트 | `touch new_file.txt` |
| `cp` | 파일 또는 디렉토리 복사 | `cp file.txt copy.txt`, `cp -r folder1 folder2` |
| `mv` | 파일 또는 디렉토리 이동/이름 변경 | `mv old.txt new.txt`, `mv file.txt /path/to/move/` |
| `rm` | 파일 또는 디렉토리 삭제 | `rm file.txt`, `rm -r folder` |

## 파일 내용 보기

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `cat` | 파일 내용 출력 | `cat file.txt` |
| `less` | 파일 내용을 페이지 단위로 보기 | `less large_file.txt` |
| `head` | 파일의 처음 몇 줄 보기 | `head -n 5 file.txt` |
| `tail` | 파일의 마지막 몇 줄 보기 | `tail -n 5 file.txt` |

## 텍스트 처리

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `grep` | 파일에서 패턴 검색 | `grep "pattern" file.txt` |
| `sed` | 스트림 편집기 | `sed 's/old/new/g' file.txt` |
| `awk` | 텍스트 처리 프로그래밍 | `awk '{print $1}' file.txt` |

## 시스템 정보

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `uname` | 시스템 정보 표시 | `uname -a` |
| `df` | 디스크 사용량 표시 | `df -h` |
| `du` | 디렉토리 사용량 표시 | `du -sh *` |
| `free` | 메모리 사용량 표시 | `free -m` |

## 프로세스 관리

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `ps` | 실행 중인 프로세스 나열 | `ps aux` |
| `top` | 동적 프로세스 뷰어 | `top` |
| `kill` | 프로세스 종료 | `kill PID`, `kill -9 PID` |

## 권한 관리

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `chmod` | 파일 권한 변경 | `chmod 755 file.txt`, `chmod +x script.sh` |
| `chown` | 파일 소유자 변경 | `chown user:group file.txt` |

## 네트워크

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `ping` | 네트워크 연결 테스트 | `ping google.com` |
| `ifconfig` | 네트워크 인터페이스 설정 | `ifconfig` |
| `ssh` | 원격 서버에 보안 접속 | `ssh user@hostname` |

이 치트 시트를 참조하여 자주 사용되는 쉘 명령어를 빠르게 찾아볼 수 있습니다.