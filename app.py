import bottle
from bottle import *
import urllib.request, json
from sys import argv


@route('/')
def index():
    redirect('/json')
@route('/json')
def jsonFile():
    jFile = open("file.json","r", encoding='utf-8')
    skra = json.load(jFile)
    jFile.close()
    return template("index.tpl", gogn=skra, title='JSON',pge=True)
@route('/api')
def index2():
    with urllib.request.urlopen("https://apis.is/currency") as url:
        skra = json.loads(url.read().decode())
    return template("index.tpl", gogn=skra,title='API',pge=False)
@route('/static/<skra>')
def static_skra(skra):
    return static_file(skra, root='./public')
bottle.run(host='0.0.0.0', port=argv[1])
