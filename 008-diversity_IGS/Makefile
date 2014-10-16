all: index.html

clean:
	-rm -f index.sh *.fa *.kh *.kh.info *.comb *.temp *.spectrum* bdiv_even1000 bdiv_jk1000 beta_2d_plots wf_arare index.html

distclean: clean
	

index.sh: index.rst
	~/dev/literate-resting/scan.sh index.rst
	mv index.rst.sh index.sh

run_shell: index.sh
	bash index.sh

index.html: index.rst
	rst2html.py index.rst index.html