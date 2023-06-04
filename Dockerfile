FROM node:16

WORKDIR /usr/src/app


# copy everything over into build area - takes into account .dockerignore
COPY . ./

RUN yarn install 
RUN yarn build

EXPOSE 3000

#ENTRYPOINT ["./docker-entrypoint.sh"]
CMD [ "yarn", "preview" ]
