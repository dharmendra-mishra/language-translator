from googletrans import Translator

translator = Translator()

def translate(input_text, source_lang, target_lang):
    translated_text = translator.translate(input_text, src=source_lang, dest=target_lang)
    return translated_text.text
