# jamoviDocs

jamovi documentation using Sphinx

Install and build (first time):<br>
   `$ virtualenv _env`<br>
   `$ source _env/bin/activate`<br>
   `$ pip install -r requirements.txt`<br>
   `$ make html`<br>

Afterwards open `_build/html/index.html` in your browser.

-----------

Install and build (later):<br>
   `$ virtualenv _env`<br>
   `$ source _env/bin/activate`<br>

   `$ clear && make clean && make html`<br>
   `$ make gettext && cat .tx/exclude | while read -r line; do rm -fR ${line}; done && for F in $(find _build/gettext/* -type f -name *.pot); do sed -n '/msgid "|.*|"/{N;s/.*//;x;d;};x;p;${x;p;}' ${F} | cat -s | sed 1d > tmp.pot && mv tmp.pot ${F}; done && for L in da de es fr it ja ko nb pt ru sv tr zh_CN; do sphinx-intl update -p _build/gettext/ -l ${L}; done`<br>
   `$ sphinx-intl update-txconfig-resources --pot-dir _build/gettext/ --transifex-project-name jamovi-documentation && for F in $(grep "source_file" .tx/config | sed 's/source_file = //g'); do if [ ! -e ${F} ]; then echo "${F}: .pot file doesn't exist (anymore)"; fi; done`<br>
    
   `$ tx push -s`<br>
   Afterwards translate the resources on transifex.com<br>
   
   `$ for L in de nb tr; do rm -fR _locale/${L}/LC_MESSAGES/* && tx pull -l ${L} && sphinx-build -b html -D language=${L} . _build/html/${L}; done`<br>
   Pull the translated resources from transifex.com and build the documentation in the target language<br>
   
   After it is pushed to the github-repository, readthedocs is reading from you have to build the respective language project there (which is then integrated into the main documentation).<br> 
