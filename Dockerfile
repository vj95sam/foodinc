FROM node:latest as build 

WORKDIR /home/vigneshta95gmai/Downloads/petadoption-master/

COPY ./ / /home/vigneshta95gmai/Downloads/petadoption-master/

RUN npm install

RUN npm run build

FROM .project:lastest 

COPY --from=build  /home/vigneshta95gmai/Downloads/petadoption-master/ /home/vigneshta95gmai.project/html

EXPOSE 80
