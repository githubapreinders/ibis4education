<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" method="xml" indent="no"/>
	
	<xsl:param name="resetToken"/>
	<xsl:param name="otapStage"/>
	
	<xsl:template match="/">
		<xsl:if test="$otapStage = 'TST' or $otapStage = 'ACC'">
			<token>
				<xsl:value-of select="$resetToken"/>
			</token>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>		