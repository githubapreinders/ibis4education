<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />
	
	<xsl:param name="user"/>
	<xsl:param name="accesstoken"/>
	<xsl:template match="/">
	
		<loginDetails>
			<AccessToken><xsl:value-of select="$accesstoken/AccessToken/Token"/></AccessToken>
			<User>
				<id><xsl:value-of select="$user/*/*/*/field[@name='UID']"/></id>
				<xsl:choose>
					<xsl:when test="$user/*/*/*/field[@name='NAME'] != ''">
						<name><xsl:value-of select="$user/*/*/*/field[@name='NAME']"/></name>
					</xsl:when>
				</xsl:choose>
				<xsl:choose>
					<xsl:when test="$user/*/*/*/field[@name='LASTNAME'] != ''">
						<lastname><xsl:value-of select="$user/*/*/*/field[@name='LASTNAME']"/></lastname>
					</xsl:when>
				</xsl:choose>				
			</User>
		</loginDetails>
	
	</xsl:template>
</xsl:stylesheet>
