# 2.2 기본 쉘 명령어

쉘을 효과적으로 사용하기 위해서는 기본적인 명령어들을 숙지해야 합니다. 이 섹션에서는 가장 자주 사용되는 쉘 명령어들을 소개합니다.

## 1. 파일 시스템 탐색

### pwd (Print Working Directory)
현재 작업 중인 디렉토리 경로를 표시합니다.
```bash
pwd
```

### ls (List)
현재 디렉토리의 내용을 나열합니다.
```bash
ls
ls -l  # 자세한 정보 표시
ls -a  # 숨겨진 파일 포함
```

### cd (Change Directory)
디렉토리를 변경합니다.
```bash
cd /path/to/directory
cd ..  # 상위 디렉토리로 이동
cd ~   # 홈 디렉토리로 이동
```

## 2. 파일 및 디렉토리 조작

### mkdir (Make Directory)
새 디렉토리를 생성합니다.
```bash
mkdir new_directory
```

### touch
빈 파일을 생성하거나 파일의 타임스탬프를 업데이트합니다.
```bash
touch new_file.txt
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
```

## 3. 파일 내용 보기

### cat (Concatenate)
파일의 내용을 화면에 출력합니다.
```bash
cat file.txt
```

### less
파일 내용을 페이지 단위로 볼 수 있습니다.
```bash
less file.txt
```

### head / tail
파일의 처음 또는 마지막 몇 줄을 보여줍니다.
```bash
head file.txt
tail file.txt
```

## 4. 기타 유용한 명령어

### echo
텍스트를 화면에 출력합니다.
```bash
echo "Hello, World!"
```

### grep
파일 내에서 특정 패턴을 검색합니다.
```bash
grep "search_term" file.txt
```

### man
명령어의 매뉴얼 페이지를 표시합니다.
```bash
man ls
```

이러한 기본 명령어들을 숙지하면 쉘에서 효율적으로 작업할 수 있습니다. 실제로 사용해보며 익숙해지는 것이 중요합니다.