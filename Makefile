PYTHON ?= python3.8

gettext:
	pybabel extract -F babel.cfg -o messages.pot .
	pybabel update -i messages.pot -d app/translations
upload_translations:
	crowdin upload sources
download_translations:
	crowdin download
