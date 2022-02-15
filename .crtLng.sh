#!/bin/bash
clear && make clean && make gettext
cat .exclude | while read -r line; do rm -fR ${line}; done
# unify files within one category in order to simplify translation on Weblate
cp _build/gettext/*.pot _locale/pot
for P in $(find _build/gettext/_pages/* -type f -name "*.pot" | cut -d/ -f4 | sort | cut -d_ -f1 | uniq); do
   msgcat --use-first _build/gettext/_pages/${P}_*.pot | sed -n '/msgid "|.*|"/{N;s/.*//;x;d;};x;p;${x;p;}' | cat -s | sed 1d > _locale/pot/_pages/${P}_all.pot 
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
for L in da de es fr it ja ko no pt ru sv tr zh; do 
    sphinx-intl update -p _locale/pot/ -l ${L}
done
