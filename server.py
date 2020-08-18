from flask import Flask
import subprocess

cmd = ["./ngpull.sh"]

app = Flask(__name__)
@app.route('/', methods=['POST'])
def Post():
    process = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()
    stdout = stdout.decode("utf-8")
    stderr = stderr.decode("utf-8")
    message = {"Output": stdout, "Error": stderr}
    if len(stderr) > 0:
        return message, 500
    else:
        return message, 200

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=6000)