pages = ae.html br.html de.html eg.html fr.html gb.html in.html jp.html us.html

all: $(pages)

%.html: apps-%.json
	./generate-html "$$(basename $@ .html)" <$^ >$@

apps-%.json:
	./get-all-top-apps "$$(echo $$(basename $@ .json) | cut -d- -f2)" >$@

clean:
	$(RM) $(pages)
