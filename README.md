PARA ENTRAR EN UN CONTENEDOR
docker excec -t -i [nombre_contenedor] /bin/bash

PROBAR LOS LOGS DE UN CONTENEDOR
docker logs [nombre_contenedor]


<!-------------------------------------------------------------------------------->
INSTALACIÓN
- cambiar el archivo server/src/database.ts; Cambiar por lo siguiente:

    const connection = mysql.createConnection({
            host: 'mysql',
            user: 'balbino',
            password: 'pass1234',
            database: 'evalua2',
    });

- cambiar las direcciones ip de client/src/app/services/alumnos.service.ts
    API_URI = 'http://[IP_Propia]:3000';
    LOG_URI = 'http://[IP_Propia]:80';

- modificar en caso de necesitarlo el .sql con los scripts finales

    CREATE USER 'balbino'@'%' IDENTIFIED BY 'pass1234';
    GRANT ALL PRIVILEGES ON *.* TO 'balbino'@'%';

    -- Habilitar conexiones remotas
    UPDATE mysql.user SET Host='%' WHERE User='balbino';
    FLUSH PRIVILEGES;

    ALTER USER 'balbino' IDENTIFIED WITH mysql_native_password BY 'pass1234';

- modificar el script de dockerfile.server en caso de necesitarlo
    CMD [ "npm", "run", "dev" ]
    
- habilitar permisos de ejecución para el archivo ejecucion.bash
    chmod +x ejecucion.bash
   
- ejecutar el archivo anterior: ./ejecucion.bash

- Si los contenedores se han parado, ejecutar el archivo: ./upContainers.bash
