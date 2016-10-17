
vpath %.html public/html
vpath %.pdf  public/pdf
vpath %.epub public/epub
vpath %.mobi public/epub
vpath %.css content/resources/css
vpath %.css css
vpath %.less less
vpath %.yml content/resources/themes

vpath %.adoc content/stories/vaterundsohn


alltopics: 	vaterundsohn_01_zubett.html vaterundsohn_01_zubett.pdf vaterundsohn_01_zubett.epub vaterundsohn_01_zubett.mobi\
			vaterundsohn_02_vorbilder.html vaterundsohn_02_vorbilder.pdf vaterundsohn_02_vorbilder.epub vaterundsohn_02_vorbilder.mobi\
			vaterundsohn_03_dergute.html vaterundsohn_03_dergute.pdf vaterundsohn_03_dergute.epub vaterundsohn_03_dergute.mobi\
	vitality-yayla.css

vaterundsohn_01_zubett.html: 01_zubett.adoc content/stories/vaterundsohn/images/* content/resources/images/markup/* content/resources/styles/yayla_html.css index.html
	asciidoctor -D public/html content/stories/vaterundsohn/01_zubett.adoc -a stylesheet=../../resources/styles/yayla_html.css -o vaterundsohn_01_zubett.html
	tidy -config content/resources/.tidy -output public/html/vaterundsohn_01_zubett.html public/html/vaterundsohn_01_zubett.html  
	mkdir -p public/html/images && cp content/stories/vaterundsohn/images/01* public/html/images
	cp -r content/resources/images/markup public/html/images

vaterundsohn_01_zubett.pdf: vaterundsohn_01_zubett.html
	wkhtmltopdf --page-size A5 --footer-font-size 8 --footer-font-name "Bitstream Charter" --footer-center [page] --footer-left "ma'lernen Werkstatt" public/html/vaterundsohn_01_zubett.html public/pdf/vaterundsohn_01_zubett.pdf

vaterundsohn_01_zubett.epub: 01_zubett.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub content/stories/vaterundsohn/epub/01_zubett.adoc -o vaterundsohn_01_zubett.epub

vaterundsohn_01_zubett.mobi: 01_zubett.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub -a ebook-format=kf8 content/stories/vaterundsohn/epub/01_zubett.adoc -o vaterundsohn_01_zubett-kf8.epub -o vaterundsohn_01_zubett.mobi > content/logs/vaterundsohn_01_zubett-kf8.log

vaterundsohn_02_vorbilder.html: 02_vorbilder.adoc content/stories/vaterundsohn/images/* content/resources/images/markup/* content/resources/styles/yayla_html.css index.html
	asciidoctor -D public/html content/stories/vaterundsohn/02_vorbilder.adoc -a stylesheet=../../resources/styles/yayla_html.css -o vaterundsohn_02_vorbilder.html
	tidy -config content/resources/.tidy -output public/html/vaterundsohn_02_vorbilder.html public/html/vaterundsohn_02_vorbilder.html  
	mkdir -p public/html/images && cp content/stories/vaterundsohn/images/02* public/html/images
	cp -r content/resources/images/markup public/html/images

vaterundsohn_02_vorbilder.pdf: vaterundsohn_02_vorbilder.html
	wkhtmltopdf --page-size A5 --footer-font-size 8 --footer-font-name "Bitstream Charter" --footer-center [page] --footer-left "ma'lernen Werkstatt" public/html/vaterundsohn_02_vorbilder.html public/pdf/vaterundsohn_02_vorbilder.pdf

vaterundsohn_02_vorbilder.epub: 02_vorbilder.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub content/stories/vaterundsohn/epub/02_vorbilder.adoc -o vaterundsohn_02_vorbilder.epub

vaterundsohn_02_vorbilder.mobi: 02_vorbilder.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub -a ebook-format=kf8 content/stories/vaterundsohn/epub/02_vorbilder.adoc -o vaterundsohn_02_vorbilder-kf8.epub -o vaterundsohn_02_vorbilder.mobi > content/logs/vaterundsohn_02_vorbilder-kf8.log

vaterundsohn_03_dergute.html: 03_dergute.adoc content/stories/vaterundsohn/images/* content/resources/images/markup/* content/resources/styles/yayla_html.css index.html
	asciidoctor -D public/html content/stories/vaterundsohn/03_dergute.adoc -a stylesheet=../../resources/styles/yayla_html.css -o vaterundsohn_03_dergute.html
	tidy -config content/resources/.tidy -output public/html/vaterundsohn_03_dergute.html public/html/vaterundsohn_03_dergute.html  
	mkdir -p public/html/images && cp content/stories/vaterundsohn/images/03* public/html/images
	cp -r content/resources/images/markup public/html/images

vaterundsohn_03_dergute.pdf: vaterundsohn_03_dergute.html
	wkhtmltopdf --page-size A5 --footer-font-size 8 --footer-font-name "Bitstream Charter" --footer-center [page] --footer-left "ma'lernen Werkstatt" public/html/vaterundsohn_03_dergute.html public/pdf/vaterundsohn_03_dergute.pdf

vaterundsohn_03_dergute.epub: 03_dergute.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub content/stories/vaterundsohn/epub/03_dergute.adoc -o vaterundsohn_03_dergute.epub

vaterundsohn_03_dergute.mobi: 03_dergute.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub -a ebook-format=kf8 content/stories/vaterundsohn/epub/03_dergute.adoc -o vaterundsohn_03_dergute-kf8.epub -o vaterundsohn_03_dergute.mobi > content/logs/vaterundsohn_03_dergute-kf8.log

vitality-yayla.css: $(shell ls less)
	lessc less/vitality.less css/vitality-yayla.css 
