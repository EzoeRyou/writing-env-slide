all : slide book

slide : index.html

index.html : slide.md
	pandoc -s -t revealjs --mathjax --variable transition=fade -o index.html slide.md

book : book.html

book.html : metadata.md slide.md
	pandoc -s --toc --mathjax -o book.html metadata.md slide.md

.PHONY : all slide book 
