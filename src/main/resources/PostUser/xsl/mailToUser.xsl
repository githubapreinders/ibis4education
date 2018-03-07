<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="xml" indent="yes" />
	<xsl:param name="name"/>
	<xsl:param name="lastname"/>
	<xsl:param name="email"/>
	<xsl:param name="password"/>
	<xsl:param name="instancename"/>

	<xsl:template match="/">
		<email>
			<recipients>
				<recipient type="to"><xsl:value-of select="$email"/></recipient>
			</recipients>
			<from>ap@integrationpartners.nl</from>
			<subject>
				Course Credentials for <span><xsl:value-of select="$name"/></span> <span><xsl:value-of select="$lastname"/></span>
			</subject>
			<message>
				<!--
				http://support.xink.io/support/solutions/articles/1000064098-why-is-outlook-stripping-line-breaks-from-plain-text-emails
				https://stackoverflow.com/questions/247546/outlook-autocleaning-my-line-breaks-and-screwing-up-my-email-format
				https://www.masternewmedia.org/newsletter_publishing/newsletter_formatting/remove_line_breaks_issue_Microsoft_Outlook_2003_when_publishing_text_newsletters_20051217.htm
				-->
				<p><xsl:value-of select="$name"/> <xsl:value-of select="$lastname"/> </p>
				<p> Your login name : <xsl:value-of select="$email"/></p>
				<p> Your password : 	<xsl:value-of select="$password"/></p>
				<p> The url of your Ibis : 	<xsl:value-of select="$instancename"/></p>
			</message>
		</email>
	</xsl:template>
</xsl:stylesheet>