Sphinx Container
================

This is a simple Sphinx container. It allows you to quickly generate
documentation without having to install all of the dependencies directly on
your system.

Python 2.7 Example
------------------

If you have a Python 2.7 project for which you'd like to generate
documentation, you may begin your documentation with something such as:

    docker run -ti --rm -v $(pwd)/docs:/docs:rw -w /docs codekoala/sphinx:2.7 sphinx-quickstart2

Note that this will generate documentation files as root, so you'll probably
want to take ownership:

    sudo chown -R $USER ./docs

You may then manipulate the documentation in the ``./docs`` directory. When
you're ready to generate the HTML, you may do so simply by launching the same
``docker run`` command without the ``sphinx-quickstart2``:

    docker run -ti --rm -v $(pwd)/docs:/docs:rw -w /docs codekoala/sphinx:2.7

This should automatically build the documentation for your project in
``./docs/_build/html`` (for example).

Python 3.4 Example
------------------

The steps are the same as for Python 2.7, except the docker image tag is
``3.4`` instead of ``2.7``. Also, to begin the documentation project, you'll
use ``sphinx-quickstart`` rather than ``sphinx-quickstart2``.
