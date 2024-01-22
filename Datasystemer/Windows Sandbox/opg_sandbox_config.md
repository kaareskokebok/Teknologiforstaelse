# Oppgaver Windows Sandbox 

Windows Sandbox kan konfigureres ved å lage en .wsb-fil. Et minimalt eksempel er

```XML
<Configuration>
    <LogonCommand>
    <Command>cmd.exe /c start msedge</Command>
</LogonCommand>
</Configuration>
```