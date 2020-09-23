FROM mcr.microsoft.com/dotnet/core/aspnet:3.1

LABEL version="1.0" maintainer="Fabiano"

WORKDIR /app

COPY bin/Debug/netcoreapp3.1/publish .

ENTRYPOINT [ "dotnet", "SampleTcc.dll" ]
