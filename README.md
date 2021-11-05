# Grupo tenedorcin :fork_and_knife:
## Proyecto Just Fork 

## Integrantes: 
- Yago Silva @YagoSilvaA [github](https://github.com/YagoSilvaA) (En honor)
- Ian Cortez @IanCortez [github](https://github.com/IanCortez)
- Sebastián Lizárraga @SebaU12 [github](https://github.com/SebaU12)

## Tema del proyecto

`Pagina de adquisición de productos gastronomicos y administración de restaurantes online`

## Motivación
Ante el aumento de uso de aplicaciones como Rappi, Fazil, entre otras, se desarrollo esta aplicación web con el fin de dar facilidad a las personas que quieran iniciar su negocio y/o facilitar al usuario el poder adquirir producctos de algún restaurante. 


## Funcionalidades

| Angular Route | Backend URLs | Funcionalidad |
| --- | --- | --- |
| `/home` | `GET /user/permission` | Recopila el permiso que tiene el usuario | 
| `/home` | `GET /user_admin/permission` | Recopila el permiso que tiene el admin | 
| `/home` | `GET /restaurants` | Recopila todos los restaurantes | 
| `/auth` | `POST /user/login, data` | Realizar login de un usuario | 
| `/auth` | `POST /user_admin/login, data` | Realizar login de un admin | 
| `/auth` | `POST /user/sign-up, data` | Realizar registro de un usuario | 
| `/auth` | `POST /user_admin/sign-up, data` | Realizar registro de un admin | 
| `/menu/:id` | `GET /menu/+id` | Ver los menus que tiene el restaurante | 
| `/menu/:id` | `POST /pedido/user, data` | Realiza un pedido y se guarda en el historial del usuario | 
| `/menu/:id` | `GET /menu/+idr+/+idm` | Realiza la busqueda de un menu especifico usando la id del restaurante (idr) y el id del menu (idm) | 
| `/admin/postR` | `POST /restaurants, data` | Realiza la creación de un restaurante | 
| `/admin/postR` | `POST /images/upload, data` | Permite guardar una imagen | 
| `/admin/patchR` | `PATCH /restaurants, data` | Realiza una actualización de la información del restaurante | 
| `/admin/patchR` | `POST /images/upload, data` | Permite guardar una imagen | 
| `/admin/patchR` | `GET /restaurants/data/personal` | Adquiere la información del restaurante personal para agregarlo en el form de actualización |
| `/admin/mis-pedidos` | `GET /pedido/user` | Recopila todos los pedidos que hizo el usuario | 
| `/admin/mis-pedidos` | `GET /restaurants/+id` | Realiza la busqueda de la información de un restaurante en especifico |
| `/admin/mis-pedidos` | `GET /pedido/user/+id` | Ver información detallada del un pedido | 
| `/admin/mis-menus` | `POST /menu, data` | Permite crear un nuevo menu | 
| `/admin/mis-menus` | `GET /menu/+id` | Ver los menus que tiene el restaurante | 
| `/admin/patch-menus/:id` | `PATCH /menu/+id` | Actualiza la información de un menu | 
| `/admin/patch-menus/:id` | `DELETE /menu/+id` | Elimina la información del menu especifico | 
| `/admin/mostrar-pedido/:id` | `GET /menu/+idr+/+idm` | Realiza la busqueda de un menu especifico usando la id del restaurante (idr) y el id del menu (idm) |
| `/admin/user` | `PATCH /user/update, data` | Actualiza la información del usuario | 
| `/admin/user` | `PATCH /user_admin/update, data` | Actualiza la información del admin | 
| `/admin/user` | `DELETE /user/destroy` | Elimina la información de usuario | 
| `/admin/user` | `DELETE /user_admin/destroy` | Elimina la información de admin | 
| `/admin/my-restaurant` | `GET /user_admin/resId` | Consigue la id del restaurante | 
| `/admin/my-restaurant` | `DELETE /restaurants` | Elimina la información del restaurante | 



## Instalación

### Base de datos
## Configuración
1. Abrir MySQL
2. (Opcional) si se desea no ingresar su usario y contraseña, entonces crear una cuenta en mysql con los siguientes datos:
- Usuario: `utec`
- Clave: `1234567890`
3. En MySQL usar el comando: `CREATE DATABASE just_fork`
4. Entrar al archivo `config.json`, ubicado en la carpeta  `backend/config/`
5. En "username": Su_usuario, "password": "Su_contraseña", "database": "just_fork"
6. Ingresar el comando `npx sequelize-cli db:migrate`
7. Si se desea información más detallada de la base de datos lea `just_fork.sql` o revise dentro del backend `migrations` y `models` 

### Backend
1. Ingresar a la carpeta `backend/`
2. Instalar dependencias, aunque tenga instalado nodemon se recomienda ejecutar el comando mostrado
```
npm install
npm install -g nodemon
```
3. Iniciar el proyecto

`npm start`

### Frontend
1. Ingresar a la carpeta `frontend/just_fork`
2. Instalar dependencias

`npm install`

3. Iniciar el proyecto

`ng serve --open`

### Avisos
En caso la pagina se quede congelada por un tiempo, reinicie la pagina desde el navegador, no es necesario parar el servidor
