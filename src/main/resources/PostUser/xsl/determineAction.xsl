<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" method="xml" indent="no"/>
	
	<xsl:param name="email"/>
	<xsl:param name="inviteBy"/>

	<xsl:template match="/">
			<xsl:choose>
				<xsl:when test="string-length(*/*/*/field[@name='EMAIL'])&gt;0 and string-length($inviteBy) &gt; 0">
<ExistingAccPo/>
				</xsl:when>
				<xsl:when test="string-length(*/*/*/field[@name='EMAIL'])&gt;0 and string-length($inviteBy) = 0">
<ExistingAccLp/>
				</xsl:when>
				<xsl:when test="string-length(*/*/*/field[@name='EMAIL']) = 0 and string-length($inviteBy) &gt; 0">
<NewAccPo/>
				</xsl:when>
				<xsl:when test="string-length(*/*/*/field[@name='EMAIL']) = 0 and string-length($inviteBy) = 0">
					<xsl:choose>
						<xsl:when test="contains($email, '.ghostinspector@priooo.com')">
<GhostInspector/>
						</xsl:when>
						<xsl:when test="contains($email, '.demo@priooo.com')">
<Demo/>
						</xsl:when>
						<xsl:otherwise>
<NewAccLp/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:when>
			</xsl:choose>
	</xsl:template>
</xsl:stylesheet>		