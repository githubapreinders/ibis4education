<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" method="xml" indent="no"/>
	
	<xsl:template match="/">
		<user>
			<name>Demo</name>
			<lastname>User</lastname>
			<email><xsl:value-of select="loginDetails/email"/></email>
			<role>1</role>
			<team>0</team>
			<subscription>Trial</subscription>
		</user>
	</xsl:template>
</xsl:stylesheet>		
