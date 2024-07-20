To build the HTML for this textbook, run the command `jupyter-book build src`. Once the build is finished, the HTML files can be found in `src/_build/html`.

To update the GitHub Pages website after building the HTML, run the command `ghp-import -p -n -f src/_build/html`.

To build the PDF for this textbook, run the script `makepdf.sh`. (In addition to `jupyter-book`, you will need a TeX distribution such as `texlive`.) Once the build is finished, the PDF can be found in `src/_build/latex` and is named `JNBbook.pdf`. Please note that the PDF will not include the custom cover, which must be added manually.

If you encounter unexpected errors with the build, try running the command `jupyter-book clean src` to clean the `_build` directory.

Here are the latest versions of these packages and distributions known to successfully build the book:

* Jupyter Book      : 1.0.2
* External ToC      : 1.0.1
* MyST-Parser       : 2.0.0
* MyST-NB           : 1.1.1
* Sphinx Book Theme : 1.1.3
* Jupyter-Cache     : 1.0.0
* NbClient          : 0.10.0
* ghp-import        : 2.1.0
* texlive           : 20240312
