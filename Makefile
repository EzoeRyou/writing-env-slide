all : slide book

slide : index.html

index.html : slide.md
	pandoc -s -t revealjs --mathjax --variable transition=fade -o index.html slide.md

book : book.html

book.html : slide.md
	pandoc -s --toc --mathjax -o book.html slide.md

.PHONY : slide book 
