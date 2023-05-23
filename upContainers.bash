# Ejecutar el contenedor de la base de datos
echo "Ejecutando el contenedor de la base de datos..."
docker start mysql

sleep 25

# Ejecutar el contenedor del backend
echo "Ejecutando el contenedor del backend..."
docker start server

# Ejecutar el contenedor del frontend
echo "Ejecutando el contenedor del frontend..."
docker start client

echo "Contenedores levantados!!"
