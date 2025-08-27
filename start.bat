@echo off
:: Kiểm tra nếu chưa có server.jar thì tải PaperMC về
if not exist server.jar (
    echo Đang tải PaperMC server.jar...
    curl -L -o server.jar https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/123/downloads/paper-1.21.1-123.jar
)

:: Chấp nhận EULA nếu chưa có file eula.txt
if not exist eula.txt (
    echo eula=true>eula.txt
)

:: Chạy server với 2GB RAM (bạn có thể chỉnh lại)
java -Xmx2G -Xms2G -jar server.jar nogui

pause
