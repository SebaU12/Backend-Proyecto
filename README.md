# Grupo tenedorcin :fork_and_knife:
## Proyecto Just Fork 

## Integrantes: 
- Yago Silva @YagoSilvaA [github](https://github.com/YagoSilvaA)
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
| `/auth` | `POST /user/login` | Realizar login de un usuario | 
| `/auth` | `POST /user_admin/login` | Realizar login de un admin | 
| `/auth` | `POST /user/sign-up` | Realizar registro de un usuario | 
| `/auth` | `POST /user_admin/sign-up` | Realizar registro de un admin | 
| `/menu/:id` | `GET /menu/+id` | Ver los menus que tiene el restaurante | 
| `/menu/:id` | `POST /pedido/user` | Realiza un pedido y se guarda en el historial del usuario | 
| `/menu/:id` | `GET /menu/+idr+/+idm` | Realiza la busqueda de un menu especifico usando la id del restaurante (idr) y el id del menu (idm) | 

## Instalación

### Base de datos
#### Primera forma
1. Abrir MySQL
2. Ejecutar el script de inicialización de la DB: `source just_fork.mysql`
3. Entrar al archivo `config.json`, ubicado en la `carpeta backend/config/`
4. En "username": Su_usuario, "password": "Su_contraseña", "database": "just_fork"
5. (Opcional) si se desea no ingresar su usario y contraseña, entonces crear una cuenta en mysql con los siguientes datos:
- Usuario: `utec`
- Clave: `1234567890`

#### Segunda forma
1. Abrir MySQL
2. Ejecutar el script de inicialización de la DB: `CREATE DATABASE just_fork`
3. Entrar al archivo `config.json`, ubicado en la `carpeta backend/config/`
4. En "username": Su_usuario, "password": "Su_contraseña", "database": "just_fork"
5. (Opcional) si se desea no ingresar su usario y contraseña, entonces crear una cuenta en mysql con los siguientes datos:
- Usuario: `utec`
- Clave: `1234567890`
6. ingresar el comando `npx sequelize-cli db:migrate`

### Backend

1. Instalar dependencias
```
npm install
npm install -g nodemon
```
2. Iniciar el proyecto

`npm start`

### Frontend

1. Instalar dependencias

`npm install`

2. Iniciar el proyecto

`ng serve --open`


