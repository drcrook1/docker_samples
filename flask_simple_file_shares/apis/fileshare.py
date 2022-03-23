from app import app
from flask import Blueprint, request, jsonify
import simplejson
import os
from pathlib import Path

fileshare = Blueprint('fileshare', __name__, url_prefix='/api/fileshare')

MOUNT_HOME = "/app/files"

@fileshare.route('/make', methods=['POST'])
def make_file():
    '''
    basically send file_name with a something.txt or .json or whatever.
    '''
    r_json = request.get_json()
    print(r_json)
    path = os.path.join(MOUNT_HOME, r_json["file_name"])
    if(not os.path.exists(MOUNT_HOME)):
        os.makedirs(MOUNT_HOME)
    fp = open(path, "x")
    fp.close()
    return simplejson.dumps({"Success" : True})

@fileshare.route('/list', methods=['GET'])
def list_files():
    '''
    basically send file_name with a something.txt or .json or whatever.
    '''
    files = os.listdir(MOUNT_HOME)
    return simplejson.dumps({"files" : files})