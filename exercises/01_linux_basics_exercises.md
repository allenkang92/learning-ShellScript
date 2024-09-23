# 리눅스 기초 실습

이 실습은 리눅스 기초 섹션에서 배운 내용을 실제로 적용해보는 과정입니다.

## 실습 1: 터미널 탐색

1. 터미널을 열어주세요.
   - Ubuntu: Ctrl + Alt + T
   - macOS: Command + Space, 'terminal' 입력

2. 현재 위치를 확인하세요.
   ```bash
   pwd
   ```
   출력 예: /home/username

3. 홈 디렉토리의 내용을 리스트로 출력하세요.
   ```bash
   ls
   ```
   출력 예: Documents Downloads Pictures ...

4. 숨겨진 파일을 포함하여 모든 파일을 자세히 보여주는 옵션으로 다시 리스트를 출력하세요.
   ```bash
   ls -la
   ```
   출력 예: 
   ```
   total 100
   drwxr-xr-x 15 username username 4096 Sep 23 10:00 .
   drwxr-xr-x  3 root     root     4096 Sep 1  09:00 ..
   -rw-------  1 username username  220 Sep 1  09:00 .bash_history
   ...
   ```

## 실습 2: 디렉토리 및 파일 조작

1. 'linux_practice'라는 이름의 새 디렉토리를 만드세요.
   ```bash
   mkdir linux_practice
   ```

2. 생성한 디렉토리로 이동하세요.
   ```bash
   cd linux_practice
   ```

3. 'hello.txt'라는 빈 파일을 생성하세요.
   ```bash
   touch hello.txt
   ```

4. "Hello, Linux!"라는 텍스트를 'hello.txt' 파일에 쓰세요.
   ```bash
   echo "Hello, Linux!" > hello.txt
   ```

5. 'hello.txt' 파일의 내용을 확인하세요.
   ```bash
   cat hello.txt
   ```
   출력 예: Hello, Linux!

## 실습 3: 파일 시스템 탐색

1. 루트 디렉토리(/)로 이동하세요.
   ```bash
   cd /
   ```

2. 'etc' 디렉토리로 이동한 후, 그 안의 내용을 리스트로 출력하세요.
   ```bash
   cd etc
   ls
   ```

3. 홈 디렉토리로 돌아가세요.
   ```bash
   cd ~
   ```

4. 'linux_practice' 디렉토리를 삭제하세요.
   ```bash
   rm -r linux_practice
   ```
   주의: 이 명령은 디렉토리와 그 안의 모든 내용을 삭제합니다.

## 실습 4: 파일 권한

1. 'test_script.sh'라는 새 파일을 만들고, 다음 내용을 입력하세요:
   ```bash
   echo '#!/bin/bash
   echo "This is a test script"' > test_script.sh
   ```

2. 이 파일의 권한을 확인하세요.
   ```bash
   ls -l test_script.sh
   ```
   출력 예: -rw-rw-r-- 1 username username 42 Sep 23 11:00 test_script.sh

3. 이 스크립트에 실행 권한을 추가하세요.
   ```bash
   chmod +x test_script.sh
   ```

4. 변경된 권한을 확인하세요.
   ```bash
   ls -l test_script.sh
   ```
   출력 예: -rwxrwxr-x 1 username username 42 Sep 23 11:00 test_script.sh

5. 스크립트를 실행해보세요.
   ```bash
   ./test_script.sh
   ```
   출력 예: This is a test script

각 명령어를 실행한 후 출력 결과를 확인하고, 예상과 다르다면 무엇이 잘못되었는지 생각해보세요.