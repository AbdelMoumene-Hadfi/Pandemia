from flask import Flask , jsonify
from flask_restful import Resource, Api
from scrapper import dict

app = Flask(__name__)
api = Api(app)

class Cases(Resource):
    def get(self):
        return jsonify(dict)

api.add_resource(Cases, '/')

if __name__ == '__main__':
    app.run(debug=False)
