from flask import Flask, jsonify

cmd = ["ngpull.sh"]

app = Flask(__name__)
@app.route('/', methods=['POST'])
def Post():
    subprocess.Popen(cmd, shell=True, executable="bin/bash")
    return jsonify({"message": "Request received."})

if __name__ == "__main__":
    app.run(host='localhost', port=6000)