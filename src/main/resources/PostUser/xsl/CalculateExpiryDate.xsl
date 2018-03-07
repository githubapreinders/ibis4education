<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xsl:output omit-xml-declaration="yes" media-type="xml" indent="no"/>
	<xsl:param name="duration" />
	<xsl:variable name="iets"><xsl:value-of select="current-date() + xs:dayTimeDuration(concat('P', number($duration), 'D'))"/></xsl:variable>
			
	<xsl:template match="/">
		<expiryDate><xsl:value-of select="substring( $iets , 0, 11)"/></expiryDate>
	</xsl:template>

</xsl:stylesheet>
			