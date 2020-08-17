from flask import Flask, jsonify
import subprocess

cmd = ["ngpull.sh"]

app = Flask(__name__)
@app.route('/', methods=['POST'])
def Post():
    subprocess.Popen(cmd, shell=True, executable="bin/bash")
    return jsonify({"message": "Request received."})

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=6000)