FROM python:3.10-slim

# Set the working directory
WORKDIR /

# Copy files
COPY . .

# Make the engine executable
RUN chmod +x /engines/ChessBot/ChessBot

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the default command
CMD ["python", "lichess-bot.py"]