FROM node:latest
RUN npm install -g http-server
RUN git clone --depth 1 --branch selenium-2.53.1 https://github.com/SeleniumHQ/selenium.git && \
    ln -s selenium/common/src/web web
EXPOSE 8080
CMD ["http-server"]
