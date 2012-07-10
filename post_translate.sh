#!/bin/bash
LOCALES='en af id'

if [ $1 ]; then
  LOCALES=$1
fi

for LOCALE in LOCALES
do
  FILES=i18n/${LOCALE}/LC_MESSAGES/*.pot
  for FILE in FILES
  do
    FILENAME=${FILE%%.*}
    # Compile the translated strings
    msgfmt --statistics -o i18n/${LOCALE}/LC_MESSAGES/${FILENAME}.mo i18n/${LOCALE}/LC_MESSAGES/${FILE}
  done

  # Compile the html docs for that locale
  sphinx-build -D language=${LOCALE} -b html . _build/html/${LOCALE}

  # Compile the latex docs for that locale
  sphinx-build -D language=${LOCALE} -b latex . _build/latex/${LOCALE}

  # Compile the pdf docs for that locale
  sphinx-build -D language=${LOCALE} -b latexpdf . _build/pdf/${LOCALE}
done
