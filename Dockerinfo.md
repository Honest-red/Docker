# Команды Docker в CMD
- docker -v # версия докера
**docker images** # список имеджей
`docker build` . - создание image в этой же папке искать 

docker bild - t .- ключ - t присвоение TAG для image
docker run 464 - запустить контейнер на основании image 464(первіе цифрі image) 
docker ps - посмотреть запушенные контейнера 
docker ps -a - посмотреть все контейнера
docker rmi 829 - удаление имаджа (не удалить если сущетсвует контейнер с ним связанный)
docker rm 829 - удаление контейнера 


docker search ubuntu - поиск образов 
docker pull ubuntu - скачивание образа
docker run -it --rm 1с9 /bin/bush- it (интерактивній режим), rm (после завержщения работі с контейнером сразу удалить его), bush - что запустить для работі с контейнером, и перед ним путь к нему. После чего сразу командная строка уже работает с контейнером.

docker run --rm 8088:8080 -v "$(pwd)/src":opt/src 9874 - запускаем контейнер с удалением после испольнозвания + пробрасываем/связываем порт локальный 8088 с портом на контейнере 8080 и подключаем волюм по пути в "" путь который в примере используется тогда когда мы формируем команду (запускаю докер) из папки src(в других случаях пишем полній путь) и связіваем ее с папку opt/src в контейнере






Dockerfile (вместо точки можно указать другое расположение)
Построения сценария по которому будет создаваться image

Dockerfile - Имя


FROM python:3.10 - на базе чего создавать image

RUN apt update - RUN это выполнить команду в среде 
RUN apt install - y mc - проводник, ключ - y тушение подтверждения на установку
RUN apt install - y vim - текстовый редактор ()  
RUN mkdir -p /opt/src - создать папку, -p - tckb папка есть, то обновит ее
WORDDIR /opt/src - основная папка которая будет віступать корнем

COPY ./requrements.txt requrements.txt
RUN pip install -r requrements.txt


EXPOSE 8080 - использование порта указываем

COPY ./main.py /opt/main.py - откуда и что копировать - куда копировать (имя в конце можно изменить и будет скопирован с новім именем)

CMD["python", "main.py"] - команда для командной строки, для выполениня

CMD["python", "manage.py", "runserver", "0.0.0.0:8080"] - команда для командной строки, для выполениня, 0.0.0.0:8080 - принимать команді/обращения со всех адресов

