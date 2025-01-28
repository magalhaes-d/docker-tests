# Usar a imagem oficial do Python
FROM python:3.8-alpine

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o conteúdo do repositório para dentro do contêiner
COPY . .

# Comando para executar o script
CMD ["python", "Scripts/main.py"]
