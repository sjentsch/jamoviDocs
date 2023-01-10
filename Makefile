# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SPHINXPROJ    = lsjDocs
SOURCEDIR     = .
BUILDDIR      = _build
override LANG = en

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).

clean:
	-rm -rf $(BUILDDIR)/*

html:
	@$(SPHINXBUILD) -b html    -D language=${LANG} . $(BUILDDIR)/html/${LANG}


gettext:
	@$(SPHINXBUILD) -b gettext                     . $(BUILDDIR)/gettext

checklinks:
	@$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS)  . $(BUILDDIR)/linkcheck

htmlhelp:
	@echo "Not permitted."

devhelp:
	@echo "Not permitted."

qthelp:
	@echo "Not permitted."

%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
