# chromium-box

To build:
docker build -t chromium-box .

To run:
docker run --name chromium-box --restart=always -v /home/user/chromium/conf:/home/alpine/.config/chromium/ -d chromium-box:latest

To use:
docker exec -it -e DISPLAY=:1 chromium-box bash -c 'timeout 30 chromium-browser --no-sandbox --disable-dev-shm-usage https://www.google.com'

You can extract all cookies in /home/user/chromium/conf/Default/Cookies
