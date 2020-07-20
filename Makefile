PYTHON ?= python3.8

gettext:
	$(PYTHON) -m pybabel extract -F babel.cfg -o messages.pot .
	$(PYTHON) -m pybabel update -i messages.pot -d app/translations
upload_translations:
	crowdin upload sources
download_translations:
	crowdin download
