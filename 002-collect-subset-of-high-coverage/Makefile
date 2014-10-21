all: reads-repeats.png index.html

clean:
	-rm -f index.sh *.fa *.kh *.kh.info *.dist index.html

distclean: clean
	-rm -f *.png

index.sh: index.rst
	../literate-resting/scan.sh index.rst
	mv index.rst.sh index.sh

reads-repeats.png: index.sh
	bash index.sh

index.html: index.rst
	../khmerenv/bin/../khmerenv/bin/rst2html.py index.rst index.html
