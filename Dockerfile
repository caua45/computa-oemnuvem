# Usa a imagem oficial do PHP com apache
FROM php:8.2-apache

# Copia os arquivos da sua aplicação para o diretório padrão do apache
COPY . /var/www/html/

# Habilita módulos adicionais do Apache (opicional)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Exponha a porta padrão do apache
EXPOSE 80
