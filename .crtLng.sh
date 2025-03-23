#!/bin/bash
git submodule update --remote
clear && rm -fR _build/gettext && make gettext
# clean substitions (typically image that shouldn't be translated) in order to simplify translation on Weblate
for F in $(ls _build/gettext/* | grep -v -f .exclude | cut -d/ -f3); do
   msgmerge -q _locale/pot/${F} _build/gettext/${F} -o _locale/pot/${F}
   # check numbers and " = " (works reasonably well but not perfect), there is perhaps need to manually check for \\\\ in addition
#  for S in $(grep 'msgid "|.*|"' _locale/pot/${F} | sed 's/msgid //g'); do
   for S in $(egrep 'msgid "-{0,1}[0-9]+"' _locale/pot/${F} | sed 's/msgid //g' | tr ' ' '[SPACE]'); do
      if [ $(grep -c "msgstr ${S}" _locale/pot/${F}) -lt $(grep -c "msgid ${S}" _locale/pot/${F}) ]; then
         echo "${F}: Substitution string (and the msgstr afterwards) need to be added: ${S}";
      fi
   done
#  grep ' = ' _locale/pot/${F} | sed 's/msgid //' | sed 's/msgstr //' | grep '[\\\\|\|]' | uniq -u | sed -e "s/^/${F}: /"
done
sed -i "/Language:.*/d" _locale/pot/*.pot
for F in $(find _locale -name *.po); do
   msgcat _locale/pot/$(echo ${F} | cut -d"/" -f4-)t ${F} -o tmp.po && mv tmp.po ${F}
done
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
    sed -i "s/Language: \\\\n/Language: ${L}\\\\n/" _locale/${L}/LC_MESSAGES/*.po
    sphinx-intl update -p _locale/pot -l ${L}
    sed -i '/^# /d'          _locale/${L}/LC_MESSAGES/*.po &&
    sed -i '/^#$/d'          _locale/${L}/LC_MESSAGES/*.po &&
    sed -i '/^"#-#-#-#-# /d' _locale/${L}/LC_MESSAGES/*.po
    # fix metadata
done
