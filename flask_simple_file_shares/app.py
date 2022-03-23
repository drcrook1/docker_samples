'''
Author: David Crook
Copyright: Microsoft Corporation 2022
'''
from flask import Flask

import ssl
import os

def create_app():
    app = Flask(__name__)

    from app.apis.fileshare import fileshare
    app.register_blueprint(fileshare)

    return app