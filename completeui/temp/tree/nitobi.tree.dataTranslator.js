var temp_ntb_dataTranslator='<?xml version="1.0"?><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ntb="http://www.nitobi.com"> <xsl:output method="xml" omit-xml-declaration="yes" /> <xsl:keyx:n-att-lookup" match="/root/fields/@*" use="name()" /> <x:t- match="/root"> <ntb:children> <x:at- /> </ntb:children> </x:t-> <x:t- match="e"> <ntb:node> <xsl:for-eachx:s-@*"> <xsl:if test="key(\'att-lookup\',name())"> <x:a-x:n-{key(\'att-lookup\',name())}"><x:v-x:s-." /></x:a-> </xsl:if> </xsl:for-each> </ntb:node> </x:t-></xsl:stylesheet>';
nitobi.lang.defineNs("nitobi.tree");
nitobi.tree.dataTranslator = nitobi.xml.createXslProcessor(nitobiXmlDecodeXslt(temp_ntb_dataTranslator));