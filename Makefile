
all: pdf clean-tmp

pdf:
	xelatex main
	biber main
	xelatex main
	xelatex main
	mv main.pdf MetricsReport.pdf
clean: clean-tmp clean-log

clean-log:
	rm -f *.log

clean-tmp:
	@rm -f *.aux
	@rm -f *.bbl
	@rm -f *.bcf
	@rm -f *.blg
	@rm -f *.xml
	@rm -f *.toc

.PHONY: all pdf clean-tmp clean-log
