# 1.2 터미널 기초

## 터미널이란?

터미널(Terminal)은 텍스트 기반의 인터페이스로, 사용자가 컴퓨터와 직접 상호작용할 수 있게 해주는 프로그램입니다. 리눅스에서는 터미널을 통해 시스템을 제어하고 다양한 작업을 수행할 수 있습니다.

## 터미널 열기

대부분의 리눅스 배포판에서는 다음과 같은 방법으로 터미널을 열 수 있습니다:
- 단축키 `Ctrl + Alt + T` 사용
- 애플리케이션 메뉴에서 "Terminal" 또는 "Console" 검색

## 프롬프트 이해하기

터미널을 열면 다음과 같은 프롬프트가 보일 것입니다:

```
username@hostname:~$
```

- `username`: 현재 로그인한 사용자 이름
- `hostname`: 컴퓨터의 이름
- `~`: 현재 위치 (여기서는 홈 디렉토리를 의미)
- `$`: 일반 사용자를 나타냄 (root 사용자의 경우 `#`으로 표시)

## 기본 명령어

1. `pwd` (Print Working Directory): 현재 작업 중인 디렉토리 표시
   ```
   $ pwd
   /home/username
   ```

2. `ls` (List): 현재 디렉토리의 내용을 나열
   ```
   $ ls
   Documents  Downloads  Pictures  Music
   ```

3. `cd` (Change Directory): 디렉토리 변경
   ```
   $ cd Documents
   $ pwd
   /home/username/Documents
   ```

4. `mkdir` (Make Directory): 새 디렉토리 생성
   ```
   $ mkdir new_folder
   $ ls
   new_folder
   ```

5. `echo`: 텍스트를 화면에 출력
   ```
   $ echo "Hello, World!"
   Hello, World!
   ```

## 팁
- 대부분의 명령어는 `--help` 옵션을 지원합니다. 예: `ls --help`
- `Tab` 키를 사용하여 명령어나 파일 이름을 자동 완성할 수 있습니다.
- 위/아래 화살표 키를 사용하여 이전에 입력한 명령어를 탐색할 수 있습니다.
