FROM python:3.13.5-alpine3.21

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo de requirements e instala as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código da aplicação
COPY . .

EXPOSE 8000

# Comando para executar a aplicação usando Uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]