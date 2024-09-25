# Pipes and Redirections

Bash 쉘에서 파이프와 리다이렉션은 데이터 흐름을 제어하고 명령어를 연결하는 강력한 도구입니다. 이 섹션에서는 이러한 기능의 사용법과 실제 예제를 살펴보겠습니다.

## 파이프 (|)

파이프는 한 명령어의 출력을 다른 명령어의 입력으로 전달합니다.

### 기본 사용법

```bash
command1 | command2
```

### 예제

1. 디렉토리 내용을 정렬하여 표시:
   ```bash
   ls -l | sort
   ```

2. 로그 파일에서 특정 패턴을 찾고 결과 개수 세기:
   ```bash
   grep "error" log.txt | wc -l
   ```

3. 프로세스 목록에서 특정 프로세스 찾기:
   ```bash
   ps aux | grep "nginx"
   ```

## 리다이렉션

리다이렉션은 입력과 출력의 방향을 변경합니다.

### 출력 리다이렉션 (>)

파일로 출력을 보냅니다. 기존 파일 내용을 덮어씁니다.

```bash
echo "Hello, World!" > output.txt
```

### 출력 추가 (>>)

파일 끝에 출력을 추가합니다.

```bash
echo "New line" >> output.txt
```

### 입력 리다이렉션 (<)

파일에서 입력을 받습니다.

```bash
sort < unsorted.txt
```

### Here Document (<<)

여러 줄의 입력을 명령어에 전달합니다.

```bash
cat << EOF
Line 1
Line 2
Line 3
EOF
```

## 고급 사용법

### 에러 리다이렉션 (2>)

표준 에러를 파일로 리다이렉트합니다.

```bash
command 2> error.log
```

### 표준 출력과 에러를 모두 리다이렉트

```bash
command > output.log 2>&1
```

### /dev/null로 출력 무시

```bash
command > /dev/null
```

## 실제 사용 예제

1. 로그 파일 분석:
   ```bash
   grep "ERROR" app.log | sort | uniq -c | sort -nr > error_summary.txt
   ```

2. 파일 내용 비교:
   ```bash
   diff <(ls dir1) <(ls dir2)
   ```

3. 압축 파일 내용 검색:
   ```bash
   zcat large_file.gz | grep "pattern"
   ```

파이프와 리다이렉션을 마스터하면 복잡한 작업을 간단한 명령어 조합으로 수행할 수 있습니다. 이는 Bash 쉘의 강력한 기능 중 하나이며, 스크립팅과 일상적인 작업에서 매우 유용합니다.