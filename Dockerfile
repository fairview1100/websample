FROM mcr.microsoft.com/powershell:latest

WORKDIR /app

ADD ["server.ps1", "/app/"]

SHELL ["/opt/microsoft/powershell/7/pwsh","-Command"]

RUN Install-Module -Name Pode -Force

ENTRYPOINT ["pwsh", "-File", "server.ps1"]
