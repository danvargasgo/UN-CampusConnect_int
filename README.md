# README

Ejecutar los siguientes comandos para correr el contenedor:

* docker build -t un-campusconnect_int .

* docker run -p 3001:3001 --name un-campusconnect_int un-campusconnect_int


Se deben ejecutar los contenedores del API Gateway y Autenticación.

Para probar que esté funcionando correctamente, crear un proyecto en Soap UI con la siguiente dirección: http://127.0.0.1:3001/users/wsdl. 
Ejecutar la petición emails y verificar que se imprima un arreglo con los correos.
