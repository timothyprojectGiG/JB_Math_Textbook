#!/bin/sh -x

# define variables
srcdir="src"
latexdir="src/_build/latex"
parentdir="../../.."

# back up original _toc.yml
mv "$srcdir"/_toc.yml "$srcdir"/_toc-original.yml

# set PDF-specific _toc.yml
cp "$srcdir"/_toc-pdf.yml "$srcdir"/_toc.yml

# compile LaTeX (and do so twice to fix cross-references etc.)
for i in {1..2}
do
  jb build "$srcdir" --builder latex
done

# copy custom cover to latexdir
cp cover.pdf "$latexdir/"

cd "$latexdir"

# do initial build of pdf
xelatex -interaction=nonstopmode JNBbook

# make index (manually replacing \spxentry with \indexentry)
makeindex JNBbook
sed -i '' 's/spxentry/sphinxstyleindexentry/g' JNBbook.ind
sed -i '' 's/spxextra/sphinxstyleindexextra/g' JNBbook.ind

# rebuild pdf (and do so twice to fix index etc.)
for i in {1..2}
do
  xelatex -interaction=nonstopmode JNBbook
done

cd "$parentdir"

# restore original _toc.yml
mv "$srcdir"/_toc-original.yml "$srcdir"/_toc.yml
