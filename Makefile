
vpath %.html public/html
vpath %.pdf  public/pdf
vpath %.epub public/epub
vpath %.mobi public/epub
vpath %.css content/resources/css
vpath %.css css
vpath %.less less
vpath %.yml content/resources/themes

vpath %.adoc content/stories/vaterundsohn


alltopics: vaterundsohn_01_zubett.html vaterundsohn_01_zubett.pdf vaterundsohn_01_zubett.epub vaterundsohn_01_zubett.mobi\
	vitality-yayla.css

vaterundsohn_01_zubett.html: 01_zubett.adoc $(ls content/stories/vaterundsohn/images/01*) content/resources/styles/yayla_html.css
	asciidoctor -D public/html content/stories/vaterundsohn/01_zubett.adoc -a stylesheet=../../resources/styles/yayla_html.css -o vaterundsohn_01_zubett.html
	mkdir -p public/html/images && cp content/stories/vaterundsohn/images/01* public/html/images
	cp -r content/resources/images/markup public/html/images

vaterundsohn_01_zubett.pdf: 01_zubett.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-pdf -D public/pdf content/stories/vaterundsohn/01_zubett.adoc -a pdf-stylesdir=content/resources/themes -a pdf-style=yayla -a pdf-fontsdir=content/resources/fonts -o vaterundsohn_01_zubett.pdf

vaterundsohn_01_zubett.epub: 01_zubett.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub content/stories/vaterundsohn/epub/01_zubett.adoc -o vaterundsohn_01_zubett.epub

vaterundsohn_01_zubett.mobi: 01_zubett.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub -a ebook-format=kf8 content/stories/vaterundsohn/epub/01_zubett.adoc -o vaterundsohn_01_zubett-kf8.epub -o vaterundsohn_01_zubett.mobi > content/logs/vaterundsohn_01_zubett-kf8.log

vitality-yayla.css: $(shell ls less)
	lessc less/vitality.less css/vitality-yayla.css 
