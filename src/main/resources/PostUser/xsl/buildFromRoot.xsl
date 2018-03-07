<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" media-type="xml" indent="no"/>
	<xsl:param name="OriginalXML" />
			
	<xsl:template match="/">
				
		<project>
		<xsl:value-of select = "$OriginalXML/id" />
		<xsl:value-of select = "$OriginalXML/name" />
		<xsl:value-of select = "$OriginalXML/date" />
		</project>
			


	</xsl:template>

</xsl:stylesheet>
			