@Autor: Karina Gerdez kagerhe@gmail.com
Feature: Crear una nueva cuenta en el sitio web
YO como usuario de la pagina web 
QUIERO registrarme en la pagina
PARA comprar productos

Scenario Outline: Registro exitoso
Given ella quiere entrar a la pagina web
When ella creara una nueva cuenta
|  NombreUsuario | Correo | Clave | ConfirmarClave | PrimerNombre | SegundoNombre | Telefono | Pais | Ciudad | Direccion | Estado | CodigoPostal |
| <NombreUsuario>|<Correo>|<Clave>|<ConfirmarClave>|<PrimerNombre>|<SegundoNombre>|<Telefono>|<Pais>|<Ciudad>|<Direccion>|<Estado>|<CodigoPostal>|
Then ella espera ver su nombre de usuario cerca del icono de usuario

Examples:
|  NombreUsuario | Correo               |  Clave      |  ConfirmarClave | PrimerNombre | SegundoNombre | Telefono   | Pais     | Ciudad   | Direccion         | Estado    | CodigoPostal |
|   KariG12      | karin1234@gmail.com  |  Karig1234* |  Karig1234*     | Karina       | Gerdez        | 3002321100 | Colombia | Medellin | Diagonal 55 Bello | Antioquia | 051236       |
|   CarlosG12    | carlos@gmail.com     |  Cam3333/   |  Cam3333/       | Mary         |               |            |          |          |                   |           |              |




Scenario Outline: Registro no exitoso
Given ella quiere entrar a la pagina web
When ella creara una nueva cuenta
|  NombreUsuario | Correo | Clave | ConfirmarClave | PrimerNombre | SegundoNombre | Telefono | Pais | Ciudad | Direccion | Estado | CodigoPostal |
| <NombreUsuario>|<Correo>|<Clave>|<ConfirmarClave>|<PrimerNombre>|<SegundoNombre>|<Telefono>|<Pais>|<Ciudad>|<Direccion>|<Estado>|<CodigoPostal>|
Then ella espera que la usuaria no este registrada

Examples:
|  NombreUsuario | Correo               |  Clave      |  ConfirmarClave | PrimerNombre | SegundoNombre | Telefono   | Pais     | Ciudad       | Direccion                       | Estado    | CodigoPostal |
|   Jose         | jose444@gmail.com    |  Jose44444* |  Jose44444*     | Jose         | Rodriguez     | 3014995230 | Venezuela| Barquisimeto | Carreca 20 entre calles 15 y 16 | Antioquia | 051236       |
|   KariG12      | karin1234@gmail.com  |  Mari3333/  |  Mari3333/      | Mary         |               |            |          |              |                                 |           |              |
 