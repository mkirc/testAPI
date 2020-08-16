FROM mcr.microsoft.com/dotnet/core/sdk:3.1 as build-image

WORKDIR /testAPI

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1

WORKDIR /testAPI

COPY --from=build-image /testAPI/out .

ENV ASPNETCORE_URLS="http://0.0.0.0:5000"
ENTRYPOINT ["dotnet", "testAPI.dll", "--environment=Development"]
