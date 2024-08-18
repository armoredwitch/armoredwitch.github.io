markdown -T -n -ftoc -x index.md > toc.tmp
sed -i "/\[TOC\]/r toc.tmp" index.html
/bin/rm -fv toc.tmp

