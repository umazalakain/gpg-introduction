%title: Introducción a GPG
%author: Unai Zalakain
%date: 2016-06-24


# Índice


1. qué es

2. tipos de cifrado

3. (des)cifrado

4. firmas digitales

5. confianza

6. correspondencia

7. gestión de contraseñas


---


# Qué es


- software de cifrado

- software libre

- permite cifrar (confidencialidad)

- permite firmar (autenticación e integridad)

- permite crear redes de confianza

- interfaz de línea de comandos

- multitud de interfaces gráficas

- integración con clientes de correo

- integración con gestores de contraseñas


---


# Tipos de cifrado


- cifrado simétrico
    - texto plano *<--- clave --->* texto cifrado
    - quien puede cifrar, puede descifrar
    - todas las partes necesitan conocer la clave

- cifrado asimétrico
    - texto plano *--- clave pública destinatario --->* texto cifrado
    - texto cifrado *--- clave privada destinatario --->* texto plano
    - cualquiera que posea la clave pública puede cifrar
    - solo quien posea la clave privada puede descifrar
    - computacionalmente costoso


---


# (Des)cifrado


- se crea una clave de sesión aleatoria
- se emplea la clave pública del destinatario para cifrar asimétricamente la clave de sesión
- se emplea la clave de sesión para cifrar simétricamente el contenido
- podemos cifrar para múltiples claves


---


# Cifrando con GPG

~~~
$ echo "Ping" | gpg2 -a -e -r unai@gisa-elkartea.org
-----BEGIN PGP MESSAGE-----
Version: GnuPG v2

hQEMA72uLbJJfe3kAQf8CuOAetkklBslwARAMGy6k8fAqQlI9il0RhiQsMhr02NJ
4Rg+7DatRR1IX7rtcUDknc36J0sN+HuMQGEK94xzRnLr/yJaHKc12wHSEOu9vNsN
kqpGHrhhSiCQPIpCHd7ooJ5oCyuXnMOgbAWKD9GxtxR0ZEV62+/Rl+AUL0bNElLR
l+znmX5LWG5liZLftPMcjFkHqD1jBqZ9N5d5iOdL5daUDUFWqNqMpg1Mgu8XaB1k
8Z+1TUkUwQ66KKteerZJtFf0889nO7ZfxpuqDu8XL89D/JmTaxGQIMmq8EEc0/6K
sj9mPvG1WaSWoN9oYFHes1B9YNI5SNew/iSTgad9kNJAAU0H+qersTJbcTMNOhx2
HJrHopGHEjN8KGWJ1X5J+lxd2TM02oCitwkgJbl8qpYy6385MzuQIbSWoQh9iBYl
LA==
=B5zs
-----END PGP MESSAGE-----
~~~


---


# Descifrando con GPG

~~~
$ gpg2 -d < file_with_encrypted_message
gpg: encrypted with 2048-bit RSA key, ID 497DEDE4, created 2016-05-04
      "Unai Zalakain (GISA) <unai@gisa-elkartea.org>"
Ping
~~~

---
