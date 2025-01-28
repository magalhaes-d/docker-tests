# Usar a imagem base oficial do Python
FROM python:3.8-alpine

# Instalar dependências do Git
RUN apk update && apk add --no-cache git

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Configuração do Git no contêiner (para permitir o commit)
RUN git config --global user.name 'github-actions[bot]'
RUN git config --global user.email 'github-actions[bot]@users.noreply.github.com'

# Clonar o repositório diretamente dentro do contêiner
RUN git clone https://github.com/${{ secrets.GITHUB_REPOSITORY }} .

# Instalar dependências do Python, se houver um arquivo requirements.txt
# RUN pip install -r requirements.txt

# Rodar o script (que pode gerar alterações no repositório)
CMD ["python", "Scripts/main.py"]

# Git push após executar o script
RUN git add . && git commit -m 'Update Doc folder from container' && git push https://x-access-token:${{ secrets.GITHUB_TOKEN }}@github.com/${{ github.repository }}.git HEAD:master
