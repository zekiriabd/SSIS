<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:output indent="yes" method="xml" encoding="utf-8" omit-xml-declaration="yes"/>

  <xsl:template match="*">
    <xsl:element name="{local-name()}">
	<xsl:apply-templates select="@* | node()" />
    </xsl:element>	
  </xsl:template>

  <xsl:template match="@*">
    <xsl:attribute name="{local-name()}">
	<xsl:value-of select="." />
    </xsl:attribute>	
  </xsl:template>

<xsl:template match="comment() | text() | processing-instruction()">
    <xsl:copy />
</xsl:template>

</xsl:stylesheet>