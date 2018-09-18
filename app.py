from bottle import *
import urllib.request, json



@route('/json')
def jsonFile():
    jFile = open("file.json","r", encoding='utf-8')
    skra = json.load(jFile)
    jFile.close()
    return template("index.tpl", gogn=skra, title='JSON')
@route('/api')
def index2():
    with urllib.request.urlopen("https://apis.is/currency") as url:
        data = json.loads(url.read().decode())
    return template("index.tpl", gogn=data,title='API')
run(debug=True)
