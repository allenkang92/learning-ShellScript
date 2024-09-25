# 2.2 기본 쉘 명령어

쉘을 효과적으로 사용하기 위해서는 기본적인 명령어들을 숙지해야 합니다. 이 섹션에서는 가장 자주 사용되는 쉘 명령어들을 소개하고, 실제 사용 예를 함께 제시합니다.

## 1. 파일 시스템 탐색

### pwd (Print Working Directory)
현재 작업 중인 디렉토리 경로를 표시합니다.
```bash
pwd
# 출력 예: /home/username/documents
```

### ls (List)
현재 디렉토리의 내용을 나열합니다.
```bash
ls
ls -l  # 자세한 정보 표시
ls -a  # 숨겨진 파일 포함
ls -lh # 파일 크기를 읽기 쉬운 형태로 표시
```

### cd (Change Directory)
디렉토리를 변경합니다.
```bash
cd /path/to/directory
cd ..  # 상위 디렉토리로 이동
cd ~   # 홈 디렉토리로 이동
cd -   # 이전 디렉토리로 이동
```

## 2. 파일 및 디렉토리 조작

### mkdir (Make Directory)
새 디렉토리를 생성합니다.
```bash
mkdir new_directory
mkdir -p parent/child/grandchild  # 부모 디렉토리도 함께 생성
```

### touch
빈 파일을 생성하거나 파일의 타임스탬프를 업데이트합니다.
```bash
touch new_file.txt
touch -d "2023-05-01 12:00" file.txt  # 특정 날짜로 타임스탬프 변경
```

### cp (Copy)
파일이나 디렉토리를 복사합니다.
```bash
cp source.txt destination.txt
cp -r source_dir destination_dir  # 디렉토리 복사
```

### mv (Move)
파일이나 디렉토리를 이동하거나 이름을 변경합니다.
```bash
mv old_name.txt new_name.txt
mv file.txt /path/to/new/location/
```

### rm (Remove)
파일이나 디렉토리를 삭제합니다.
```bash
rm file.txt
rm -r directory  # 디렉토리 삭제
rm -i file.txt   # 삭제 전 확인 요청
```

## 3. 파일 내용 보기

### cat (Concatenate)
파일의 내용을 화면에 출력합니다.
```bash
cat file.txt
cat file1.txt file2.txt  # 여러 파일 내용 연속 출력
```

### less
파일 내용을 페이지 단위로 볼 수 있습니다.
```bash
less file.txt
# 'q'를 눌러 종료, '/'를 눌러 검색
```

### head / tail
파일의 처음 또는 마지막 몇 줄을 보여줍니다.
```bash
head -n 5 file.txt  # 처음 5줄 출력
tail -n 10 file.txt # 마지막 10줄 출력
tail -f log_file    # 실시간으로 추가되는 내용 모니터링
```

## 4. 텍스트 처리

### grep
파일 내에서 특정 패턴을 검색합니다.
```bash
grep "search_term" file.txt
grep -i "case insensitive" file.txt  # 대소문자 구분 없이 검색
grep -r "search_term" directory/     # 디렉토리 내 모든 파일에서 재귀적 검색
```

### sed (Stream Editor)
텍스트를 변환하거나 수정합니다.
```bash
sed 's/old/new/g' file.txt           # 'old'를 'new'로 전체 변경
sed -i 's/old/new/g' file.txt        # 파일 직접 수정
```

### awk
텍스트 파일을 처리하고 보고서를 생성합니다.
```bash
awk '{print $1}' file.txt            # 각 줄의 첫 번째 필드 출력
awk -F: '{print $1}' /etc/passwd     # :를 구분자로 사용하여 첫 번째 필드 출력
```

## 5. 시스템 정보 및 프로세스 관리

### ps (Process Status)
실행 중인 프로세스를 보여줍니다.
```bash
ps aux                               # 모든 프로세스 자세히 보기
ps -ef | grep python                 # Python 관련 프로세스만 보기
```

### top
시스템 프로세스를 실시간으로 모니터링합니다.
```bash
top
# 'q'를 눌러 종료
```

### kill
프로세스를 종료합니다.
```bash
kill PID                             # 프로세스 ID로 프로세스 종료
kill -9 PID                          # 강제 종료
```

## 6. 기타 유용한 명령어

### echo
텍스트를 화면에 출력합니다.
```bash
echo "Hello, World!"
echo $PATH                           # 환경 변수 출력
```

### which
실행 파일의 위치를 찾습니다.
```bash
which python
```

### man
명령어의 매뉴얼 페이지를 표시합니다.
```bash
man ls
```

### chmod (Change Mode)
파일이나 디렉토리의 권한을 변경합니다.
```bash
chmod 755 file.sh                    # 실행 권한 부여
chmod u+x file.sh                    # 소유자에게 실행 권한 부여
```

이러한 기본 명령어들을 숙지하면 쉘에서 효율적으로 작업할 수 있습니다. 실제로 사용해보며 익숙해지는 것이 중요합니다. 각 명령어에 대해 `man` 명령어를 사용하여 더 자세한 정보를 얻을 수 있습니다.