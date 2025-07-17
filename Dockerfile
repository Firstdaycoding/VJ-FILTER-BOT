# Don't Remove Credit @VJ_Botz
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

FROM python:3.10-slim

# System setup
RUN apt update && apt upgrade -y
RUN apt install git -y

# Install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip3 install -U pip && pip3 install -U -r /requirements.txt

# Set up app directory and copy full source
WORKDIR /VJ-FILTER-BOT
COPY . /VJ-FILTER-BOT

# Run the bot using the start script
CMD ["/bin/bash", "/start.sh"]
