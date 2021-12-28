#!/bin/bash
echo "Скрипт создания лаб.работы"
sleep 3
echo "Создание каталога Grading"
mkdir grading
echo "Каталог успешно создан"
sleep 5
echo "Создание файлов и получение даных из /bin/manage-files"
touch grading/grade{1,2,3}
head -5 /bin/manage-files > grading/manage-files.txt
tail -3 /bin/manage-files >> grading/manage-files.txt
echo "Успешно создано"
sleep 3
echo "Вход в grading и копирование файла"
cd grading/
cp manage-files.txt manage-files-copy.txt
cd
sleep 5
echo "Открытие файла manage-files-copy через Vim"
sleep 3
vim grading/manage-files-copy.txt
sleep 3
echo "Генерация линков"
ln grading/grade1 hardlink
ln -s grading/grade2 softlink
ls -l /boot > grading/longlisting.txt
sleep 3
echo "Успешно выполнено"
