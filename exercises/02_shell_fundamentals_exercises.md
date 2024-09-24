# 쉘 기초 실습 문제 (초보자용)

## 실습 1: 기본 명령어 익히기

1. 터미널을 열고 현재 위치를 확인하세요.
   ```
   pwd
   ```

2. 홈 디렉토리로 이동하세요.
   ```
   cd ~
   ```

3. 'my_first_directory'라는 새 디렉토리를 만드세요.
   ```
   mkdir my_first_directory
   ```

4. 방금 만든 디렉토리로 이동하세요.
   ```
   cd my_first_directory
   ```

5. 현재 디렉토리의 내용을 확인하세요 (비어 있어야 합니다).
   ```
   ls
   ```

## 실습 2: 파일 만들기와 내용 보기

1. 'hello.txt'라는 새 파일을 만드세요.
   ```
   touch hello.txt
   ```

2. 'hello.txt' 파일에 "Hello, World!"라는 텍스트를 추가하세요.
   ```
   echo "Hello, World!" > hello.txt
   ```

3. 'hello.txt' 파일의 내용을 확인하세요.
   ```
   cat hello.txt
   ```

4. 'hello.txt' 파일에 "I'm learning shell!"이라는 새 줄을 추가하세요.
   ```
   echo "I'm learning shell!" >> hello.txt
   ```

5. 다시 'hello.txt' 파일의 내용을 확인하세요.
   ```
   cat hello.txt
   ```

## 실습 3: 파일 복사와 이동

1. 'hello.txt' 파일을 복사하여 'hello_copy.txt'라는 새 파일을 만드세요.
   ```
   cp hello.txt hello_copy.txt
   ```

2. 현재 디렉토리의 내용을 확인하세요.
   ```
   ls
   ```

3. 'hello_copy.txt' 파일의 이름을 'greeting.txt'로 변경하세요.
   ```
   mv hello_copy.txt greeting.txt
   ```

4. 다시 현재 디렉토리의 내용을 확인하세요.
   ```
   ls
   ```

5. 홈 디렉토리로 돌아가세요.
   ```
   cd ~
   ```

이 실습들을 통해 가장 기본적인 쉘 명령어들을 연습할 수 있습니다. 각 명령어를 실행한 후 결과를 확인하고, 예상과 다르다면 무엇이 잘못되었는지 생각해보세요. 어려움이 있다면 언제든 질문해주세요!