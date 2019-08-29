# Chaos Communication Camp 2019 Web PDFCreator

## 题目详情
- *A pdf conversion service. What could go wrong?*

## 考点

- TCPDF CVE-2018-17057
- 反序列化

## 启动

    docker-compose up -d
    open http://127.0.0.1:4539/

## Writeup
- https://teamrocketist.github.io/2019/08/25/Web-Chaos-Communication-Camp-2019-CTF-pdfcreator/

## 相关说明

- flag保存在`files/flag.php`，形如`$flag="flag{test_flag}";`，位于Docker环境下的`/var/www/site/`（做题时不知道该路径）。
- 发放题目时需要给出[code.tar](https://github.com/Tiaonmmn/)。
- 原题用的Apache2，这个用的Nginx，整体思路没变。


## 版权

该题目复现环境尚未取得主办方及出题人相关授权，如果侵权，请联系本人删除（ tiaonmmn@163.com ）
