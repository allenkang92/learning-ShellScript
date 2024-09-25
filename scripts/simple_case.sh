#!/bin/bash

echo "좋아하는 과일을 입력하세요 (사과, 바나나, 오렌지)"

read fruit

case $fruit in
	"사과")
		echo "사과는 빨간 색입니다."
		;;
	"바나나")
		echo "바나나는 노란 색입니다."
		;;
	"오렌지")
		echo "오렌지는 주황 색입니다."
		;;
	*)
		echo "잘 모르겠어요. $fruit의 색깔은 뭘까요?"
		;;
esac
