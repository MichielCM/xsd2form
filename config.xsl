<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema">

	<!-- set output method to HTML. Use version 5 or legacy-compatible doctype to generate HTML5. -->
	<xsl:output method="html" omit-xml-declaration="yes" indent="yes" version="5.0" doctype-system="about:legacy-compat" />
	
	<!-- set debug options for xsd2html2xml: -->
	<!-- INFO: information messages (through template 'inform') -->
	<!-- STACK: stack trace (through template 'log') -->
	<!-- ERROR: error messages (through template 'throw') -->
	<xsl:param name="config-debug">error</xsl:param>
	
	<!-- if an XSD supports multiple root elements, specify the position of the one that should be used to generate the form from here -->
	<!-- defaults to 1 -->
	<xsl:param name="config-root">1</xsl:param>
	
	<!-- choose a JavaScript function to be called when the form is submitted.
	it should accept a string argument containing the xml or html -->
	<xsl:param name="config-callback">console.log</xsl:param>
	
	<!-- specify whether element's annotation/documentation tags should be used for descriptions (works together with config-language) -->
	<!-- defaults to false, i.e. element's @name or @ref (unprefixed) attributes -->
	<xsl:param name="config-documentation">false</xsl:param>
	
	<!-- optionally specify which annotation/documentation language (determined by xml:lang) should be used -->
	<xsl:param name="config-language" />
	
</xsl:stylesheet>