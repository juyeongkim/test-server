FROM node:latest
RUN npm install -g http-server
RUN git clone https://github.com/SeleniumHQ/selenium.git && \
    ln -s selenium/common/src/web web
EXPOSE 8080
CMD ["http-server"]
