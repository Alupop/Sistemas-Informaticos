#Bloqueo después de 3 intentos erróneos
net accounts /lockoutthreshold: 3
#Duración del bloqueo
net accounts /lockoutduration: 120
#Duración de la ventan de bloqueo
net accounts /lockoutwindow:120
#Días máximos para cambiar la contraseña
net accounts /maxpwage:30
#Días mínimos para cambiar la contraseña
net accounts /minpwage:5
#Longitud mínima de caracteres de la contraseña
net accounts /minpwlen:8
#Recordar las últimas 5 contraseñas
net accounts /uniquepw:5
#Activar la complejidad de las contraseñas
secedit /export /cfg c:\secpol.cfg
(GC C:\secpol.cfg) -Replace "PasswordComplexity = 0","PasswordComplexity = 1" | Out-File C:\secpol.cfg
secedit /configure /db c:\windows\security\local.sdb /cfg c:\secpol.cfg /areas SECURITYPOLICY
Remove-Item C:\secpol.cfg -Force
