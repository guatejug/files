title=Creando Pipelines para integración y despliegue continuo con Drone
date=2019-08-23
type=post
tags=Tools
status=published
category=Tools
twitter=fagonerx
img=davidrecinos.jpg
~~~~~~

## Title

Creando Pipelines para integración y despliegue continuo con Drone

## Presenter

**David Recinos**

* Backend developer Xoom un servicio de Paypal
* Frontend developer en Katch
* Frontend developer en INCAN

## Social Media

* https://www.linkedin.com/in/david-recinos/

## Description

La cultura de DevOps ha tenido mucho auge en los últimos años la cual ha sido algo positivo ya que ha hecho un esfuerzo para que los procesos de desarrollo implementen buenas prácticas, incitando a la automatización en la construcción del software, pruebas unitarias, integración, aceptación; liberación y despliegue de infraestructura y de aplicación, en una palabra, tratar de reducir el tiempo de respuesta en cambios significativos a producción. Y como es de esperar la demanda crea la oferta necesaria, muchas herramientas han aparecido para ejecutar la integración y entrega continua, tenemos a Jenkins, CircleCI, Travis, ConcourseCI, Drone, enfocandonos en este documento a este último.

Jenkins uno de los más utilizados en el mundo, desde su concepción en el proyecto Hudson por el ańo 2004, Jenkins ha sido una herramienta que ha logrado grandes aportes a la industria de software, en el cual muchas empresas confían sus procesos de automatización. La licencias de Open Source también han traído mucha oferta para todo tipo de soluciones, diariamente muchas herramientas se suman al mercado y ofrecen gratis sus soluciones, otras ofreciendo planes de pago para más poder de procesamiento o soporte. Drone se suma al mercado desde 2014, la cual es una herramienta de características similares a sus colegas, pero su configuración tiene sus matices propios.

Veamos un cuadro comparativo Jenkins

* Versión 2.183
* Trabaja con Docker
* ~1K plugins
* Configuración por Web, CLI, lenguajes alternativos

Drone

* Versión 1.2.1
* Orientado a contenedores
* ~70 plugins
* Configuración por medio archivos YAML, UI, CLI

Y algunas de las características en común Jenkins & Drone

* Alojado/Instalado local
* Open-source
* Libre / Gratis
* Documentación muy extensa

Drone utiliza la tecnología de contenedores como pilar principal de sus operaciones. Los contenedores es una forma simplificada de la virtualización que ofrece bastantes beneficios para ejecutar plataformas, servicios y programas. Drone permite configurar Pipelines de integración o despliegue de manera descriptiva en archivos YAML. También permite la configuración de nodos esclavos los cuales pueden procesar diferentes trabajos de construcción, pruebas y despliegue de distintos proyectos al mismo tiempo.

Entra las diferentes características de Drone se pueden mencionar:

* Administración de secretos, Drone permite la administración de información sensible como contraseñas, llaves SSH, entre otros, de manera local así como también es posible utilizar herramientas externas como Vault de Hashicorp.
* API Rest para la configuración y ejecución de pipelines (usado por el cliente de línea de comandos y la UI).
* Cuenta con un cliente de línea de comandos el cual permite la configuración y ejecución de pipelines desde la consola, tanto en Windows, Linux y Mac OS. Se tiene una UI simple la cual permite la configuración y ejecución de Pipelines.
* Cuenta con varios Plugins entre los cuales podemos mencionar Ansible, Terraform para aprovisionamiento y configuración de servidores y aplicaciones. Así como la posibilidad de la creación de los mismos por cualquier persona u organización interesada.

¿Qué necesito para probar Drone?

Existen dos formas de probar Drone, la primera es utilizar el servicio que ofrecen en el sitio (https://drone.io/) y la segunda es descargando el la imagen de docker (https://hub.docker.com/r/drone/drone) y hacerla funcionar ya sea en un ambiente local, servidor o máquina virtual.
