#!/bin/bash
clear && rm -fR _build/gettext && make gettext
# clean substitions (typically image that shouldn't be translated) in order to simplify translation on Weblate
for F in $(ls _build/gettext/* | grep -v -f .exclude | cut -d/ -f3); do
   msgmerge -q _locale/pot/${F} _build/gettext/${F} -o _locale/pot/${F}
   # check subsitutions and documents
   for S in $(grep 'msgid "|.*|"' _locale/pot/${F} | sed 's/msgid //g'); do
      if [ $(grep -c "msgstr ${S}" _locale/pot/${F}) -eq 0 ]; then
         echo "${F}: Substitution string (and the msgstr afterwards) need to be added: ${S}";
      fi
   done
   for S in $(grep 'msgid ":doc:' _locale/pot/${F} | sed 's/msgid //g'); do
      if [ $(grep -c "msgstr ${S}" _locale/pot/${F}) -eq 0 ]; then
         echo "${F}: Substitution string (and the msgstr afterwards) need to be added: ${S}";
      fi
   done
done
sed -i "/Language:.*/d" _locale/pot/*.pot
#for F in $(find _locale -name *.po); do
#   FS=$(echo ${F} | cut -d"/" -f4-);
#   if [ ! -e "_locale/${FS}t" ]; then
#      if [ $(grep "^msgstr" ${F} | grep -cv '^msgstr ""$') -eq 0 ]; then
#         rm ${F}
#      else
#         mv ${F} ${F}.rmv
#      fi
#   fi
#done
for L in $(cat .languages); do
    sphinx-intl update -p _locale/pot -l ${L}
done
