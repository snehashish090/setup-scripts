echo off
mkdir $1
cd $1
touch README.md
cat >> README.md << EOF
# $1
Author : Snehasish Laskar
Created: $(date)
License: MIT License (LICENSE file)
EOF
touch LICENSE
cat >> LICENSE << EOF
MIT License

Copyright (c) 2022 Snehashish Laskar

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

mkdir templates
touch templates/base.html
mkdir static 
touch static/base.css
cat >> templates/base.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$1</title>
   <link rel="stylesheet" href="../static/base.html">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
EOF
touch app.py
cat >> app.py << EOF

# Author : Snehashish Laskar
# Created on $(date)
# Start creating your Web App Here 

from flask import Flask, request, render_template, jsonify, redirect

app = Flask(__name__)

@app.route('/', methods = ['GET'])
def index():
	return 'Hello World'
EOF
touch db.py
cat >> db.py << EOF
import os
from pathlib import Path

path = Path(__file__.parent
EOF

touch wsgi.py
cat >> wsgi.py << EOF
import sys

host = sys.argv[1]
port = sys.argv[2]

from app import app

app.run(debug=True, host = host, port=port)
EOF

git init
git add .
git commit -m "init"
say there you go done!