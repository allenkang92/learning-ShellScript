# Text Processing Tools

리눅스 환경에서 텍스트 처리는 매우 중요한 작업입니다. 이 섹션에서는 가장 많이 사용되는 텍스트 처리 도구들인 grep, sed, awk에 대해 알아보겠습니다.

## grep (Global Regular Expression Print)

grep은 파일이나 입력 스트림에서 특정 패턴을 검색하는 도구입니다.

### 기본 사용법

```bash
grep [옵션] 패턴 [파일...]
```

### 주요 옵션

- `-i`: 대소문자 구분 없이 검색
- `-v`: 패턴과 일치하지 않는 줄 출력
- `-r`: 디렉토리 내 모든 파일에서 재귀적으로 검색
- `-n`: 매치된 줄의 번호 표시

### 예제

1. 파일에서 특정 단어 검색:
   ```bash
   grep "error" log.txt
   ```

2. 여러 파일에서 대소문자 구분 없이 검색:
   ```bash
   grep -i "warning" *.log
   ```

3. 특정 패턴을 포함하지 않는 줄 찾기:
   ```bash
   grep -v "success" output.txt
   ```

## sed (Stream Editor)

sed는 텍스트 스트림이나 파일의 내용을 변환하는 도구입니다.

### 기본 사용법

```bash
sed [옵션] '명령' [파일...]
```

### 주요 명령

- `s/패턴/치환/g`: 패턴을 찾아 치환
- `d`: 패턴과 일치하는 줄 삭제
- `p`: 패턴과 일치하는 줄 출력

### 예제

1. 텍스트 치환:
   ```bash
   sed 's/old/new/g' file.txt
   ```

2. 특정 줄 삭제:
   ```bash
   sed '/pattern/d' file.txt
   ```

3. 특정 줄 범위 출력:
   ```bash
   sed -n '10,20p' file.txt
   ```

## awk

awk는 텍스트 처리와 보고서 생성을 위한 강력한 도구입니다.

### 기본 사용법

```bash
awk [옵션] '패턴 {동작}' [파일...]
```

### 주요 기능

- 필드 분리 및 처리
- 조건문과 반복문 사용
- 수학 연산 수행

### 예제

1. 특정 열 출력:
   ```bash
   awk '{print $1, $3}' file.txt
   ```

2. 특정 조건에 맞는 줄 처리:
   ```bash
   awk '$3 > 100 {print $1, $3}' data.txt
   ```

3. 열의 합계 계산:
   ```bash
   awk '{sum += $3} END {print "Total:", sum}' sales.txt
   ```

## 실전 예제

1. 로그 파일에서 에러 메시지 추출 및 정렬:
   ```bash
   grep "ERROR" app.log | sed 's/.*ERROR: //' | sort | uniq -c | sort -nr
   ```

2. CSV 파일에서 특정 열의 평균 계산:
   ```bash
   awk -F',' '{sum += $3; count++} END {print "Average:", sum/count}' data.csv
   ```

3. 텍스트 파일의 모든 URL을 추출:
   ```bash
   grep -Eo 'https?://[^ ]+' file.txt
   ```

이러한 텍스트 처리 도구들을 마스터하면 복잡한 데이터 처리 작업을 효율적으로 수행할 수 있습니다. 실제 사용 시나리오에서 이 도구들을 조합하여 사용하면 더욱 강력한 텍스트 처리 능력을 발휘할 수 있습니다.