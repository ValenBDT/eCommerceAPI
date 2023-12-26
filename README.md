/Login: Sin problema (el token dura 1 hora)

/Register: Sin problema

/CreateProduc: El sistema valida que no existe tal producto en la base de datos y si no existe, extrae el id del vendedor que hizo la peticion(lo valida) e inserta el producto en la base de datos

/DeleteProduct/{id}: Sin problema

/UpdateProduct: Un vendedor solamente puede actualizar un producto que el mismo haya dado de alta (esta regla de negocio la impuse para probar ciertas funcionalidades)

/GetProduct/{id} : Sin problema

/GetAllProducts: Sin problema

/GetAllProductsBySeller/{id}: Sin problema

/CreatePurchase: Sin problema

/GetPurchaseResume: Tome por defecto que se tenia que ingresar un id de la compra y daba el resumen de la misma, otorgando los datos pedidos y algunos extra.
(Este es el endpoint donde tuve mas dudas si lo interprete bien)

Consideraciones:

El diseño de la base de datos no lo hice buscando mayor optimizacion, solamente busque hacerla lo mas simple posible para concentrarme totalmente en el codigo, estoy seguro que pude haber hecho un mejor diseño y aprovechar mejor las tablas.


Preguntas:

1_ Cuando valido x cosa dentro de mi capa de servicios, como hago para distinguir los errores? En mi controlador solo recibo un null si alguna validacion no se cumplio y tiro el error mas generico posible, pero me gustaria poder identificar los diferentes tipos de errores.

2_ Tuve problemas en hacer el contenedor de dependencias y meter los servicios, porque me saltaba error de referencia ciclica, por ende, simplemente deje las inyecciones de los servicios en program y los demas si los meti en el contenedor

3_ Que tanta diferencia o que tan malo o bueno es el hacer ciertas operaciones en el sp mismo en vez de un trigger? Por ejemplo: Compro algo, tengo que restar stock, en el sistema lo hice en la misma sp, pero supongo que tambien podria hacerlo con un trigger, que diferencias pordria tener?

Casos que se testearon en postman(no todos, solo los mas importantes):

## Auth:

### Registro:
  * Registro de comprador o vendedor (mail unico)
  * Registro con mail repetido (error)
  * Registro con rol invalido (error)

### Login:
  * Login de comprador o vendedor
  * Login a usuario que no existe (error)
  * Login con datos parcialmente incorrectos (error)

## Productos

### Crear producto
  * Crear producto (codigo unico)
  * Crear producto con codigo repetido (error)

### Eliminar producto
  * Eliminar producto (codigo existente)
  * Eliminar producto que no existe (error)

### Actualizar producto
  * Actualizar producto (El mismo vendedor dio el alta)
  * Actualizar producto de otro vendedor (error)

### Conseguir productos (ya sea uno en especifico, todos o por vendedor)
  * Traer producto/s (existen y tienen stock)
  * No tienen stock (no aparecen)
  * No existen (error si se busca uno en especifico)

## Compras

### Crear compra
  * Crear compra (Existe el producto, el usuario y este tiene rol de comprador)
  * Crear compra con usuario que no existe (error)
  * Crear compra con usuario que no tiene rol de comprador (error)
  * Crear compra con producto que no existe (error)
  * Crear compra con producto que no tiene stock (error)

### Resumen de compra
  * Existe la compra en cuestion
  * No existe la compra en cuestion (error)




(Ejecutar en postman primero Auth > Productos > Compras)

AUTH = https://elements.getpostman.com/redirect?entityId=32006551-3b239a12-61bb-40bf-9f69-f8247ecf2006&entityType=collection

PRODUCTOS = 

COMPRAS = 
