#!/bin/bash

# 定义测试范围
start=-100
end=1000

# 循环遍历所有数字
for ((i=start; i<=end; i++)); do
    # 调用两个程序并保存它们的输出
    output_broken=$(./isPrime-broken4 $i)
    output_correct=$(./isPrime-correct $i)

    # 比较两个输出
    if [ "$output_broken" != "$output_correct" ]; then
        echo "Difference found at $i:"
        echo "isPrime_broken2: $output_broken"
        echo "isPrime_correct: $output_correct"
        echo $i >> input4.txt
    fi
done
