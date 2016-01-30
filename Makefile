#! /usr/bin/env make
# Copyright (C) 2016 Sebastian Pipping <sebastian@pipping.org>
# Licensed under CC-BY-SA-3.0

all: shell_we_continue.html

shell_we_continue.html: shell_we_continue.adoc
	asciidoctor -T asciidoctor-reveal.js/templates/slim $<
	test -f $@
