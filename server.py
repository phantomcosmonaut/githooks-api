from flask import Flask

pull_and_build = ["ngbuild.sh"]

app = Flask(__name__)
@app.route('/', methods=['POST'])
def Post():
    subprocess.Popen(pull_and_build, shell=True, executable="bin/bash")

if __name__ == "__main__":
    app.run(host='localhost', port=6000)