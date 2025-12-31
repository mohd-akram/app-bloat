all: ae.html br.html de.html fr.html gb.html jp.html us.html

%.html: apps-%.json
	./generate-html "$$(echo $$(basename $@ .html) | tr '[[:lower:]]' '[[:upper:]]')" <$^ >$@

apps-%.json: .force
	./get-all-top-apps "$$(echo $$(basename $@ .json) | cut -d- -f2)" >$@

.force:
