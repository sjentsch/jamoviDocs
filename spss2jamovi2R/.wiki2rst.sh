#!/bin/bash
W="https://wiki.uib.no/jamovien/index.php"

for P in $(wget ${W}/Special:AllPages -o /dev/null -O - | grep "<li><a href" | sed -E 's/.*index.php\/(.*?)" .*/\1/'); do
   F=$(echo ${P} | sed 's/jamovi/jamovi/gi' | sed 's/_to_/2/gi' | tr -d '():')
   wget ${W}/Special:Export/${P} -o /dev/null -O - | sed 's/<mediawiki xmlns=".*/<mediawiki>/' > ${F}.xml
   TW=$(xml sel -t -v "//timestamp" ${F}.xml)
   TL=$(grep "^${F}.rst:" .timestamp | sed "s/${F}.rst: //")
   if LC_ALL=C command eval '[ ! -e ${F}.rst ] || [[ ${TW} > ${TL} ]]'; then
      echo "Updating ${P}..."
      if [ -e ${F}.rst ]; then mv "${F}.rst" "${F}.rst.${TL}"; fi
      xml sel -t -v "//text" ${F}.xml | sed 's/jamovi/jamovi/gi' | sed 's/_to_/2/gi' | pandoc - -f mediawiki -t rst -o ${F}.rst
      if [ $? -eq 0 ]; then
         sed -i "/^${F}.rst: /d" .timestamp
         echo "${F}.rst: ${TW}" >> .timestamp
      fi
   fi
   rm ${F}.xml
done
