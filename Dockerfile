FROM python:3.10-slim

# Set the working directory
WORKDIR /

# Copy files
COPY . .

# Make the engine executable
RUN chmod +x /engines/ChessBot/ChessBot
RUN ls -l /engines/ChessBot/ChessBot
RUN file /engines/ChessBot/ChessBot
RUN /engines/ChessBot/ChessBot

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the default command
CMD ["python", "lichess-bot.py"]