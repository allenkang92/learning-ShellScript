# 2.3 쉘 스크립팅 소개

쉘 스크립팅은 쉘 명령어들을 파일에 작성하여 자동화된 작업을 수행할 수 있게 해주는 강력한 도구입니다. 이 섹션에서는 쉘 스크립팅의 기본 개념과 간단한 예제를 살펴보겠습니다.

## 쉘 스크립트란?

쉘 스크립트는 쉘에서 실행할 수 있는 명령어들을 모아놓은 텍스트 파일입니다. 이를 통해 복잡한 작업을 자동화하고, 반복적인 태스크를 쉽게 수행할 수 있습니다.

## 첫 번째 쉘 스크립트 작성하기

1. 텍스트 에디터를 사용하여 `hello_world.sh`라는 파일을 생성합니다.

2. 파일에 다음 내용을 입력합니다:

```bash
#!/bin/bash
echo "Hello, World!"
```

3. 파일을 저장하고 실행 권한을 부여합니다:

```bash
chmod +x hello_world.sh
```

4. 스크립트를 실행합니다:

```bash
./hello_world.sh
```

## 쉘 스크립트의 기본 구성 요소

1. 셔뱅(Shebang): `#!/bin/bash`
   - 스크립트의 첫 줄에 위치하며, 어떤 인터프리터로 실행할지 지정합니다.

2. 주석: `# This is a comment`
   - `#`으로 시작하는 줄은 주석으로 처리되어 실행되지 않습니다.

3. 변수:
   ```bash
   name="John"
   echo "Hello, $name!"
   ```

4. 조건문:
   ```bash
   if [ "$name" == "John" ]; then
     echo "Hello John!"
   else
     echo "Hello stranger!"
   fi
   ```

5. 반복문:
   ```bash
   for i in {1..5}
   do
     echo "Number: $i"
   done
   ```

## 간단한 예제: 파일 백업 스크립트

다음은 지정된 디렉토리의 내용을 백업하는 간단한 스크립트입니다:

```bash
#!/bin/bash

# 백업할 디렉토리와 백업 파일명 지정
source_dir="/path/to/source"
backup_file="backup_$(date +%Y%m%d).tar.gz"

# 백업 실행
tar -czf "$backup_file" "$source_dir"

echo "Backup completed: $backup_file"
```

이 스크립트는 지정된 디렉토리의 내용을 날짜가 포함된 이름의 tar.gz 파일로 압축합니다.

## 결론

쉘 스크립팅은 시스템 관리, 자동화, 그리고 복잡한 작업의 단순화에 매우 유용합니다. 이 기초를 바탕으로 더 복잡한 스크립트를 작성하고 활용할 수 있습니다.