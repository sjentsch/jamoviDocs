.. sectionauthor:: Jonathon Love

===================================
Structure of the the jamovi sources
===================================

The jamovi source structure contains the following components:

+-----------+----------------------------------------------------------------------+------------------------------------------+-------------------------------+
| directory | contents                                                             | build command                            | artifacts                     |
+===========+======================================================================+==========================================+===============================+
| electron/ | the electron app which represents the entry point of the program     | ``npm install``                          | default, app.asar             |
+-----------+----------------------------------------------------------------------+------------------------------------------+-------------------------------+
| server/   | the server code written in python and built on top of tornado        | ``python3 setup.py build_ext --inplace`` | jamovi-server (python module) |
+-----------+----------------------------------------------------------------------+------------------------------------------+-------------------------------+
| engine/   | the background processing engine (written in C++, making use of R)   | ``make``                                 | jamovi-engine (an executable) |
+-----------+----------------------------------------------------------------------+------------------------------------------+-------------------------------+
| client/   | the html, javascript and css (make up the user interface for jamovi) | ``npm install``                          | js, css, html                 |
+-----------+----------------------------------------------------------------------+------------------------------------------+-------------------------------+
| examples/ | the example data sets                                                | (these can be copied verbatim)           |                               |
+-----------+----------------------------------------------------------------------+                                          |                               |
| platform/ | platform specific files (icons, etc.)                                |                                          |                               |
+-----------+----------------------------------------------------------------------+------------------------------------------+-------------------------------+

The ``electron/``, ``server/``, ``engine/`` and ``client/`` subprojects can be built by navigating into their directories and issuing the build command listed
in the table above.

Final structure
---------------

After building each of these subprojects, the results of the builds are assembled into a final tree for installation. the final jamovi folder structure for
Ubuntu is as follows:

.. code-block:: text

   /usr/lib/jamovi/
   ├── bin/
   |   ├── locales/
   |   |   └── ...
   |   ├── resources/
   |   |   ├── electron.asar
   |   |   └── default_app.asar
   |   ├── jamovi
   |   ├── env.conf
   |   └── ...
   └── Resources
       ├── jamovi
       │   ├── client/
       |   |   └── assets/
       |   |   |   └── ...
       |   |   └── ...
       |   ├── examples/
       |   |   └── ...
       |   └── server/
       |       └── jamovi/server/
       └── modules
           ├── base
           |   └── R/
           |       └── ...
           └── jmv/
               └── ...


``bin/``
--------

The electron executable is the entry point for jamovi. it represents a combined web browser interface and nodejs interpreter. In constructing the ``bin/``
folder, its contents are simply taken from electron release archives (available from https://electron.atom.io), with three exceptions:

-  the ``jamovi`` executable
-  resources/default_app.asar
-  ``env.conf``

The ``jamovi`` executable is simply the ``electron`` executable renamed.

The ``resources/default_app.asar`` is the default electron app which electron goes looking for when it starts up. This needs to be replaced with the
``default_app.asar`` produced by the electron component of jamovi (from the ``electron/`` folder in the repo).

``env.conf`` contains the path settings and environmental variables that jamovi requires. variables which end in ``PATH`` or ``HOME`` are resolved relative to
the ``env.conf``. On Ubuntu, it’s contents are:

.. code-block:: text

   [ENV]

   R_HOME=/usr/lib/R
   R_LIBS=/usr/lib/R/site-library:/usr/lib/R/library
   PYTHONPATH=../Resources/jamovi/server

   JAMOVI_HOME=..
   JAMOVI_MODULES_PATH=../Resources/modules
   JAMOVI_EXAMPLES_PATH=../Resources/jamovi/examples
   JAMOVI_CLIENT_PATH=../Resources/jamovi/client
   JAMOVI_SERVER_CMD=/usr/bin/python3 -u -m jamovi.server 0


``Resources/jamovi/client``
---------------------------

This folder contains the following files from the ``client/`` subproject:

.. code-block:: text

   index.html   
   main.js   
   main.css   
   analysisui.html   
   analysisui.js   
   analysisui.css   
   resultsview.html   
   resultsview.js   
   resultsview.css   
   assets/*   


``Resources/jamovi/server``
---------------------------

This folder should contain the following files and folders from the ``server`` subproject:

.. code-block:: text

   jamovi/server/   
   jamovi/core.*.so   
   jamovi/__init__.py   
   jamovi/__pycache__

Note that the ``PYTHONPATH`` in ``env.conf`` is ``Resources/jamovi/server``, so the final path of the ``jamovi/server/`` directory will look a bit silly:

.. code-block:: text
   
   Resources/jamovi/server/jamovi/server


``Resources/jamovi/examples``
-----------------------------

This is just the contents from the ``examples/`` subfolder
