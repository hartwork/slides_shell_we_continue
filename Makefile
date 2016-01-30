all: shell_we_continue.html

shell_we_continue.html: shell_we_continue.adoc
	asciidoctor -T asciidoctor-reveal.js/templates/slim $<
	test -f $@
