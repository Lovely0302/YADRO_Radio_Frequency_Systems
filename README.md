# YADRO радиочастотные системы — DevOps 

Репозиторий содержит решения задач из тестового задания по DevOps для проекта YADRO радиочастотные смстемы.

## Структура проекта

```text
.
├── config.txt     # Конфигурация для задачи 4
├── Dockerfile     # Dockerfile для задачи 5
├── search.sh      # Скрипт для задачи 4: поиск слова в файле
├── task2.sh       # Скрипт для задачи 2: “Hello, DevOps!” → ~/hello.txt
├── task3.sh       # Скрипт для задачи 3: поиск “error” в /var/log/syslog
└── README.md      # Этот файл

Быстрый старт
Клонирование и переход в каталог проекта
git clone git@github.com:your_username/YADRO_Radio_Frequency_Systems.git
cd YADRO_RFS/YADRO_Radio_Frequency_Systems

Проставить права на исполнение
chmod +x task2.sh task3.sh search.sh

Локальное тестирование
Задача 2 (task2.sh)
./task2.sh
cat ~/hello.txt

Задача 3 (task3.sh)
./task3.sh

Задача 4 (search.sh + config.txt)
./search.sh config.txt path

Задача 5 (Docker)
docker build -t yadro-rfs .


Описание решений
Задача 2 (task2.sh)
Выводит Hello, DevOps! и одновременно пишет его в ~/hello.txt с помощью tee.

Задача 3 (task3.sh)
Ищет (без учёта регистра) слово error в файле /var/log/syslog и выводит первые 5 строк.

Задача 4
config.txt
name: test server
path: /home/user/data
file: data.txt
port: 8080
log path: /var/log/app
search.sh
Принимает два аргумента: имя файла и слово. Выводит строки, содержащие это слово.

Задача 5 (Dockerfile)
Базовый образ: ubuntu:20.04

Безинтерактивный режим установки (ENV DEBIAN_FRONTEND=noninteractive)

Установка wget, python3, python3-pip без рекомендованных пакетов

Очистка кеша APT (rm -rf /var/lib/apt/lists/*)

Копирование скриптов и конфига в /app и установка прав

CMD ["./task2.sh"] — при запуске контейнера выполняется task2.sh
