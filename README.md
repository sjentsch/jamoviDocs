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
   `$ make gettext && sphinx-intl update -p _build/gettext/ -l zh_CN -l es -l pt -l ru -l ja -l tr -l ko -l fr -l de -l it -l sv -l nb -l da`<br>
   `$ sphinx-intl update-txconfig-resources --pot-dir _build/gettext/ --transifex-project-name jamovi-documentation &&
    for F in $(grep "source_file" .tx/config | sed 's/source_file = //g'); do if [ ! -e ${F} ]; then echo "${F}: .pot file doesn't exist (anymore)"; fi; done`<br>
    
   `$ tx push -s`
   Afterwards translate the resources on transifex.com
   
   `$ tx pull --all`
   Pull the translated resources from transifex.com
   
   `$ sphinx-build -b html -D language=de . _build/html/de` 
