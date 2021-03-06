PYTHON ?= python3.8

gettext:
	pybabel extract -F babel.cfg -o app/messages.pot .
	pybabel update -i app/messages.pot -d app/translations
upload_translations:
	crowdin upload sources
download_translations:
	crowdin download
compile_translations:
	pybabel compile -d app/translations
