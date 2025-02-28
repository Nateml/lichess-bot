from flask import Flask, request, jsonify
import subprocess

app = Flask(__name__)

@app.route("/", methods=["GET"])
def health_check():
    return "Lichess Bot is ready!", 200

@app.route("/start-bot", methods=["POST"])
def start_bot():
    print("Received start request from Lichess.")
    subprocess.Popen(["python3", "lichess-bot.py"])
    return jsonify({"status": "bot started"}), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
