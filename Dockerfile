FROM node:latest
RUN npm install -g http-server
RUN svn checkout https://github.com/SeleniumHQ/selenium/trunk/common/src/web && \
    ln -s web public
EXPOSE 8080
CMD ["http-server"]
