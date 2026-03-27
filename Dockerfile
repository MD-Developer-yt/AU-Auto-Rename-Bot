FROM python:3.10-slim

WORKDIR /app
COPY . /app/

# install system deps (gcc for TgCrypto + ffmpeg for rename/convert)
RUN apt-get update && apt-get install -y \
    gcc \
    libffi-dev \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python", "bot.py"]


#Don't Remove Credits
#Ask Doubt @AU_Bot_Discussion 
#Telegram Channel @Anime_UpdatesAU 
#Owner @Mr_Mohammed_29
