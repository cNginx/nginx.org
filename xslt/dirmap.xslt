<?xml version="1.0" encoding="utf-8"?>
<!--
  Copyright (C) Nginx, Inc.
  -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="text"/>

<xsl:template match="link">
    <xsl:value-of select="@id"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="substring-before(@doc, '.xml')"/>
    <xsl:text>.html#</xsl:text>
    <xsl:value-of select="@id"/>
    <xsl:text>;&#10;</xsl:text>
</xsl:template>

</xsl:stylesheet>
