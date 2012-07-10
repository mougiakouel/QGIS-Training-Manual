#!/bin/bash
LOCALES='en af id'

if [ $1 ]; then
  LOCALES=$1
fi

for LOCALE in ${LOCALES}
do
  mkdir -p i18n/${LOCALE}/LC_MESSAGES
  echo "Updating translation catalog... "
  # Create / update the translation catalogue
  sphinx-build -D language=${LOCALE} -b gettext . i18n/${LOCALE}/LC_MESSAGES/
  echo "Done."
done
