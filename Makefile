#! /usr/bin/env make
# Copyright (C) 2016 Sebastian Pipping <sebastian@pipping.org>
# Licensed under CC-BY-SA-3.0

.PHONY: all
all: shell_we_continue.html

asciidoctor-reveal.js/.git:
	git submodule init asciidoctor-reveal.js
	git submodule update asciidoctor-reveal.js

reveal.js/.git:
	git submodule init reveal.js
	git submodule update reveal.js

.PHONY: submodules-cloned
submodules-cloned: asciidoctor-reveal.js/.git reveal.js/.git

shell_we_continue.html: shell_we_continue.adoc submodules-cloned
	asciidoctor -T asciidoctor-reveal.js/templates/slim $<
	test -f $@
