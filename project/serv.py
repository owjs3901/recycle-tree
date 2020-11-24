import json
from collections import OrderedDict
from flask import Flask
import hardware

lastmonth = OrderedDict()
nowmonth = OrderedDict()

lastmonth["can"] = 0
lastmonth["pla"] = 0
lastmonth["cup"] = 0
lastmonth["cell"] = 0


nowmonth["can"] = 0
nowmonth["pla"] = 0
nowmonth["cup"] = 0
nowmonth["cell"] = 0

app = Flask(__name__)

@app.route('/last')
def last():
    return json.dumps(lastmonth)

@app.route('/now')
def now():
    return json.dumps(nowmonth)




@app.route('/canplus')
def canplus():
    nowmonth["can"] += 1
    hardware.can_in()
    return json.dumps(nowmonth)
@app.route('/plaplus')
def plaplus():
    nowmonth["pla"] += 1
    hardware.pla_in()
    return json.dumps(nowmonth)
@app.route('/paperplus')
def paperplus():
    nowmonth["cup"] += 1
    hardware.paper_in()
    return json.dumps(nowmonth)
@app.route('/cellplus')
def cellplus():
    nowmonth["cell"] += 1
    hardware.cell_in()
    return json.dumps(nowmonth)




@app.route('/')
def index():
    return 'Hello Flask'
    
@app.route('/info')
def info():
    return 'Info'