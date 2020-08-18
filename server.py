from flask import Flask
import subprocess

cmd = ["./ngpull.sh"]

app = Flask(__name__)
@app.route('/', methods=['POST', 'GET'])
def Handler():
    if request.method == 'GET':
        return {"Message": "Server is up and running on port 6000"}, 200
    else if request.method == 'POST':
        process = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, universal_newlines=True)
        stdout, stderr = process.communicate()
        message = {"Output": stdout, "Status": process.returncode}
        status = 500 if process.returncode > 0 else 200
        return message, status

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=6000)
