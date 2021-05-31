import flask
from flask import request
import languageTranslator

app = flask.Flask(__name__)
app.config["DEBUG"] = True


@app.route('/', methods=['GET'])
def home():
    return "<h1>Python language translator app</h1><p>Send a POST request to /api/v1/translate/ to start translating language</p>"

@app.route('/api/v1/translate/', methods=['POST'])
def get_translated_text():
    args = request.get_json(force=True)
    print(args)
    if 'text' in args and 'source_lang' in args and 'target_lang' in args:
        input_text = args['text']
        source_lang = args['source_lang']
        target_lang = args['target_lang']
    else:
        return "Error: No text/source_lan/dest_lan field provided. Please specify the missing field."

    translated_text = languageTranslator.translate(input_text, source_lang, target_lang)
    return translated_text, 200

app.run()