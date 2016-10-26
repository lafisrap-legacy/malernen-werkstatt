
vpath %.html public/html
vpath %.pdf  public/pdf
vpath %.epub public/epub
vpath %.mobi public/epub
vpath %.css content/resources/css
vpath %.css css
vpath %.less less
vpath %.yml content/resources/themes

vpath %.adoc content/stories/vaterundsohn
vpath %.adoc content/stories/schleifen

alltopics: 	vaterundsohn_01_zubett.html vaterundsohn_01_zubett.epub vaterundsohn_01_zubett.mobi\
			vaterundsohn_02_vorbilder.html vaterundsohn_02_vorbilder.epub vaterundsohn_02_vorbilder.mobi\
			vaterundsohn_03_dergute.html vaterundsohn_03_dergute.epub vaterundsohn_03_dergute.mobi\
			schleife_01_mann.html schleife_01_mann.epub schleife_01_mann.mobi\
			schleife_02_frau.html schleife_02_frau.epub schleife_02_frau.mobi\
			schleife_03_kind.html schleife_03_kind.epub schleife_03_kind.mobi\
			booklet_01.pdf\
			vitality-yayla.css

vitality-yayla.css: $(shell ls less)
	lessc less/vitality.less css/vitality-yayla.css 

vaterundsohn_01_zubett.html: 01_zubett.adoc content/stories/vaterundsohn/images/* content/resources/images/markup/* content/resources/styles/yayla_html.css index.html
	asciidoctor -D public/html content/stories/vaterundsohn/01_zubett.adoc -a stylesheet=../../resources/styles/yayla_html.css -o vaterundsohn_01_zubett.html
	tidy -config content/resources/.tidy -output public/html/vaterundsohn_01_zubett.html public/html/vaterundsohn_01_zubett.html  
	mkdir -p public/html/images && cp content/stories/vaterundsohn/images/01* public/html/images
	cp -r content/resources/images/markup public/html/images

vaterundsohn_01_zubett.epub: 01_zubett.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub content/stories/vaterundsohn/epub/01_zubett.adoc -o vaterundsohn_01_zubett.epub

vaterundsohn_01_zubett.mobi: 01_zubett.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub -a ebook-format=kf8 content/stories/vaterundsohn/epub/01_zubett.adoc -o vaterundsohn_01_zubett-kf8.epub -o vaterundsohn_01_zubett.mobi > content/logs/vaterundsohn_01_zubett-kf8.log

vaterundsohn_02_vorbilder.html: 02_vorbilder.adoc content/stories/vaterundsohn/images/* content/resources/images/markup/* content/resources/styles/yayla_html.css index.html
	asciidoctor -D public/html content/stories/vaterundsohn/02_vorbilder.adoc -a stylesheet=../../resources/styles/yayla_html.css -o vaterundsohn_02_vorbilder.html
	tidy -config content/resources/.tidy -output public/html/vaterundsohn_02_vorbilder.html public/html/vaterundsohn_02_vorbilder.html  
	mkdir -p public/html/images && cp content/stories/vaterundsohn/images/02* public/html/images
	cp -r content/resources/images/markup public/html/images

vaterundsohn_02_vorbilder.epub: 02_vorbilder.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub content/stories/vaterundsohn/epub/02_vorbilder.adoc -o vaterundsohn_02_vorbilder.epub

vaterundsohn_02_vorbilder.mobi: 02_vorbilder.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub -a ebook-format=kf8 content/stories/vaterundsohn/epub/02_vorbilder.adoc -o vaterundsohn_02_vorbilder-kf8.epub -o vaterundsohn_02_vorbilder.mobi > content/logs/vaterundsohn_02_vorbilder-kf8.log

vaterundsohn_03_dergute.html: 03_dergute.adoc content/stories/vaterundsohn/images/* content/resources/images/markup/* content/resources/styles/yayla_html.css index.html
	asciidoctor -D public/html content/stories/vaterundsohn/03_dergute.adoc -a stylesheet=../../resources/styles/yayla_html.css -o vaterundsohn_03_dergute.html
	tidy -config content/resources/.tidy -output public/html/vaterundsohn_03_dergute.html public/html/vaterundsohn_03_dergute.html  
	mkdir -p public/html/images && cp content/stories/vaterundsohn/images/03* public/html/images
	cp -r content/resources/images/markup public/html/images

vaterundsohn_03_dergute.epub: 03_dergute.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub content/stories/vaterundsohn/epub/03_dergute.adoc -o vaterundsohn_03_dergute.epub

vaterundsohn_03_dergute.mobi: 03_dergute.adoc $(ls content/stories/vaterundsohn/images/01*)
	asciidoctor-epub3 -D public/epub -a ebook-format=kf8 content/stories/vaterundsohn/epub/03_dergute.adoc -o vaterundsohn_03_dergute-kf8.epub -o vaterundsohn_03_dergute.mobi > content/logs/vaterundsohn_03_dergute-kf8.log



schleife_01_mann.html: 01_mann.adoc content/stories/schleifen/images/* content/resources/images/markup/* content/resources/styles/yayla_html.css index.html
	asciidoctor -D public/html content/stories/schleifen/01_mann.adoc -a stylesheet=../../resources/styles/yayla_html.css -o schleife_01_mann.html
	tidy -config content/resources/.tidy -output public/html/schleife_01_mann.html public/html/schleife_01_mann.html  
	mkdir -p public/html/images && cp content/stories/schleifen/images/01* public/html/images
	cp -r content/resources/images/markup public/html/images

schleife_01_mann.epub: 01_mann.adoc $(ls content/stories/schleifen/images/01*)
	asciidoctor-epub3 -D public/epub content/stories/schleifen/epub/01_mann.adoc -o schleife_01_mann.epub

schleife_01_mann.mobi: 01_mann.adoc $(ls content/stories/schleifen/images/01*)
	asciidoctor-epub3 -D public/epub -a ebook-format=kf8 content/stories/schleifen/epub/01_mann.adoc -o schleife_01_mann-kf8.epub -o schleife_01_mann.mobi > content/logs/schleife_01_mann-kf8.log


schleife_02_frau.html: 02_frau.adoc content/stories/schleifen/images/* content/resources/images/markup/* content/resources/styles/yayla_html.css index.html
	asciidoctor -D public/html content/stories/schleifen/02_frau.adoc -a stylesheet=../../resources/styles/yayla_html.css -o schleife_02_frau.html
	tidy -config content/resources/.tidy -output public/html/schleife_02_frau.html public/html/schleife_02_frau.html  
	mkdir -p public/html/images && cp content/stories/schleifen/images/02* public/html/images
	cp -r content/resources/images/markup public/html/images

schleife_02_frau.epub: 02_frau.adoc $(ls content/stories/schleifen/images/01*)
	asciidoctor-epub3 -D public/epub content/stories/schleifen/epub/02_frau.adoc -o schleife_02_frau.epub

schleife_02_frau.mobi: 02_frau.adoc $(ls content/stories/schleifen/images/01*)
	asciidoctor-epub3 -D public/epub -a ebook-format=kf8 content/stories/schleifen/epub/02_frau.adoc -o schleife_02_frau-kf8.epub -o schleife_02_frau.mobi > content/logs/schleife_02_frau-kf8.log


schleife_03_kind.html: 03_kind.adoc content/stories/schleifen/images/* content/resources/images/markup/* content/resources/styles/yayla_html.css index.html
	asciidoctor -D public/html content/stories/schleifen/03_kind.adoc -a stylesheet=../../resources/styles/yayla_html.css -o schleife_03_kind.html
	tidy -config content/resources/.tidy -output public/html/schleife_03_kind.html public/html/schleife_03_kind.html  
	mkdir -p public/html/images && cp content/stories/schleifen/images/03* public/html/images
	cp -r content/resources/images/markup public/html/images

schleife_03_kind.epub: 03_kind.adoc $(ls content/stories/schleifen/images/01*)
	asciidoctor-epub3 -D public/epub content/stories/schleifen/epub/03_kind.adoc -o schleife_03_kind.epub

schleife_03_kind.mobi: 03_kind.adoc $(ls content/stories/schleifen/images/01*)
	asciidoctor-epub3 -D public/epub -a ebook-format=kf8 content/stories/schleifen/epub/03_kind.adoc -o schleife_03_kind-kf8.epub -o schleife_03_kind.mobi > content/logs/schleife_03_kind-kf8.log



booklet_01.pdf: vaterundsohn_01_zubett.html\
				vaterundsohn_02_vorbilder.html\
				schleife_01_mann.html\
				schleife_02_frau.html\
				schleife_03_kind.html\
				content/resources/html/leereseite.html\
				content/booklets/booklet_01.adoc content/booklets/booklet_01_back.adoc content/resources/styles/yayla_title.css
	asciidoctor -D public/html content/booklets/booklet_01.adoc -a stylesheet=../resources/styles/yayla_title.css -o booklet_01.html
	asciidoctor -D public/html content/booklets/booklet_01_back.adoc -a stylesheet=../resources/styles/yayla_title.css -o booklet_01_back.html
	tidy -config content/resources/.tidy -output public/html/booklet_01.html public/html/booklet_01.html  
	tidy -config content/resources/.tidy -output public/html/booklet_01_back.html public/html/booklet_01_back.html  
	mkdir -p public/html/images && cp content/booklets/images/01* public/html/images
	wkhtmltopdf --page-size A5 --footer-font-size 8 --footer-font-name "Bitstream Charter" --footer-center [page] --footer-left "ma'lernen Werkstatt"\
		cover public/html/booklet_01.html\
		public/html/vaterundsohn_01_zubett.html\
		public/html/schleife_01_mann.html\
		public/html/schleife_02_frau.html\
		public/html/schleife_03_kind.html\
		public/html/vaterundsohn_02_vorbilder.html\
		cover content/resources/html/leereseite.html\
		cover content/resources/html/leereseite.html\
		cover public/html/booklet_01_back.html\
		public/pdf/booklet_01.pdf 
	#pdf2ps booklet_01.pdf - | psbook | psnup -s1 -2 | ps2pdf - booklet_01_druck.pdf &



