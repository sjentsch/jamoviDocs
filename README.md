# jamoviDocs

jamovi documentation using Sphinx. The documentation is available at https://jamovi.readthedocs.io (and translations can be chosen by clicking at the menu that unfolds after pressing at «Read the Docs» at the bottom). Whoever would like to contribute with translations, is very welcome to do so at https://hosted.weblate.org/projects/jamovi/jamovidocs/

-----------

Install and build (first time):

   `$ virtualenv _env`<br>
   `$ source _env/bin/activate`<br>
   Set up and activate the virtual environment.<br>
   
   `$ pip3 install -r requirements.txt`<br>
   Install the required packages (wheels) in the virtual environment.<br>
   
   `$ make html`<br>
   Create a first version of the HTML build (i.e., showing how the web is going to look like later). This HTML build can afterwards be opened as `_build/html/index.html` in your browser.<br>

-----------

Install and build (later):

   `$ virtualenv _env`<br>
   `$ source _env/bin/activate`<br>
   Set up and activate the virtual environment.<br>

   `$ clear && make clean && make html`<br>
   Remove all former contents of the build directory and create a first version of the HTML build (i.e., showing how the web is going to look like later).<br>
   
   `$ make gettext && cat .exclude | while read -r line; do rm -fR ${line}; done && for F in $(find _build/gettext/* -type f -name *.pot); do sed -n '/msgid "|.*|"/{N;s/.*//;x;d;};x;p;${x;p;}' ${F} | cat -s | sed 1d > tmp.pot && mv tmp.pot ${F}; done && for F in $(find _locale -name *.po); do FS=$(echo ${F} | cut -d"/" -f4-); if [ ! -e "_build/gettext/${FS}t" ]; then if [ $(grep "^msgstr" ${F} | grep -cv '^msgstr ""$') -eq 0 ]; then rm ${F}; else mv ${F} ${F}.rmv; fi; fi; done && for L in da de es fr it ja ko no pt ru sv tr zh; do sphinx-intl update -p _build/gettext/ -l ${L}; done`<br>
   The line combines several commands (separated by `&&` so that the next command is only run if the previous one was finished without error. The first command (make gettext) creates the text files (.pot) that later form the starting point for the translation files. The second command removes those files defined in .exclude because certain parts of the documentation, e.g., the developers-hub are not supposed to be translated. The third command does some cleaning in the .pot-files. The fourth command (for F in ...) checks whether each translation file (.po) has a respective original (.pot). If not, those files are either deleted (if it doesn't contain any formerly translated strings) or the names of file is changed by appending .rmv (those files can then be checked which earlier translations they contain; those can then be  copied over manually and afterwards the .rmv-file can be removed). The last command (for L in ...) finally creates the output files for the translation into the different languages.<br>
      
   `$ for L in de nb tr; do rm -fR _locale/${L}/LC_MESSAGES/* && rm -fR _build/${L} && tx pull -l ${L} && sphinx-build -b html -D language=${L} . _build/html/${L}; done`<br>
   Pull the translated resources and build the documentation in the target language.<br>
   
   After it is pushed to the github-repository, readthedocs is reading from the respective language project there (which is then integrated into the main documentation).<br>
