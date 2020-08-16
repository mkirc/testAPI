FROM mcr.microsoft.com/dotnet/core/sdk:3.1 as build-image

CMD dotnet publish

COPY bin/Debug/netcoreapp3.1/publish/ testAPI/

WORKDIR /testAPI

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1

WORKDIR /testAPI

COPY --from=build-image /testAPI .

ENV ASPNETCORE_URLS="http://0.0.0.0:5000"
ENTRYPOINT ["dotnet", "testAPI.dll", "--environment=Development"]
