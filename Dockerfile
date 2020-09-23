FROM mcr.microsoft.com/dotnet/core/aspnet:3.1

LABEL version="1.0" maintainer="Fabiano"

WORKDIR /app

COPY ./var/lib/jenkins/workspace/SampleTCC/bin/Debug/netcoreapp3.1/publish/ .

ENTRYPOINT [ "dotnet", "mvc.dll" ]