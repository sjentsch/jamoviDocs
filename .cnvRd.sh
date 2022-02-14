#!/bin/bash

# jmv
cd /home/sjentsch/Documents/Computer/jamovi/Docker/jamovi/jmv
echo 'devtools::document(roclets=c("rd", "collate", "namespace"))' | Rscript -
for F in man/*.Rd; do G=$(echo ${F} | sed 's/man/\/home\/sjentsch\/Documents\/Computer\/jamovi\/jamoviDocs\/modules\/jmv/' | sed 's/\.Rd/\.rst/') && echo -e '.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_\n'    > ${G} && R CMD Rdconv --type=html ${F} | grep -v "Not run" | grep -v "<h2>" | sed 's/<table width="100%" summary="page for /<h1>(<code>/' | sed 's/"><tr>.*/<\/code>)<\/h1>/' | sed 's/<title>R: /<title>/' | pandoc -s -f html - -t rst | sed -e 's/^::/.. code-block:: r/g' | grep -v '^\\' >> ${G}; done
cd /home/sjentsch/Documents/Computer/jamovi/jamoviDocs
rm modules/jmv/bugs.rst

# jmvconnect
cd /tmp && git clone git@github.com:jamovi/jmvconnect.git && cd jmvconnect
echo 'devtools::document(roclets=c("rd", "collate", "namespace"))' | Rscript -
for F in man/*.Rd; do G=$(echo ${F} | sed 's/man\//\/home\/sjentsch\/Documents\/Computer\/jamovi\/jamoviDocs\/modules\/jmv\/jmvconnect_/' | sed 's/\.Rd/\.rst/') && echo -e '.. sectionauthor:: `Jonathon Love <https://jona.thon.love/>`_\n'                  > ${G} && R CMD Rdconv --type=html ${F} | grep -v "Not run" | grep -v "<h2>" | sed 's/<table width="100%" summary="page for /<h1>(<code>/' | sed 's/"><tr>.*/<\/code>)<\/h1>/' | sed 's/<title>R: /<title>/' | pandoc -s -f html - -t rst | sed -e 's/^::/.. code-block:: r/g' | grep -v '^\\' >> ${G}; done
cd /home/sjentsch/Documents/Computer/jamovi/jamoviDocs
rm -fR /tmp/jmvconnect

# jmvReadWrite
cd /home/sjentsch/Documents/Computer/jamovi/OtherCode/jmvReadWrite
for F in man/*.Rd; do G=$(echo ${F} | sed 's/man/\/home\/sjentsch\/Documents\/Computer\/jamovi\/jamoviDocs\/modules\/jmv/' | sed 's/\.Rd/\.rst/') && echo -e '.. sectionauthor:: `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_\n' > ${G} && R CMD Rdconv --type=html ${F} | grep -v "Not run" | grep -v "<h2>" | sed 's/<table width="100%" summary="page for /<h1>(<code>/' | sed 's/"><tr>.*/<\/code>)<\/h1>/' | sed 's/<title>R: /<title>/' | pandoc -s -f html - -t rst | sed -e 's/^::/.. code-block:: r/g' | grep -v '^\\' >> ${G}; done
cd /home/sjentsch/Documents/Computer/jamovi/jamoviDocs
rm modules/jmv/jmvReadWrite.rst
rm modules/jmv/ToothGrowth.rst
