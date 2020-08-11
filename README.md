#CONFIG

Check out appsettings.Development.json in /home/$USER/,
modify,
copy to */testAPI

#BUILD

`docker build -t testapi-image -f Dockerfile .`

#RUN

`docker run --rm -it -p 8080:5000 testapi-image:latest`
