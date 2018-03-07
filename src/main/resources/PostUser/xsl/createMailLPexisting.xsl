<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" method="xml" indent="no"/>
	
	<xsl:param name="resetToken"/>
	<xsl:param name="projectName"/>
	<xsl:param name="otapStage"/>

	<xsl:template match="/">
		<email>
            <uid><xsl:value-of select="result/rowset/row/field[@name='UID']"/></uid>
            <subject>You have created a Priooo project.</subject>
            <message>
            	You have created the <xsl:value-of select="$projectName"/> project.
            </message>
            <arguments>
            	<argument>
            		<name>
            			-project-
            		</name>
            		<value>
            			<xsl:value-of select="$projectName"/>
            		</value>
            	</argument>
            </arguments>
            <templateId>
            	<xsl:choose>
					<xsl:when test="$otapStage = 'LOC'">
						b3f3170a-1724-4145-b971-e27154b95d2c
					</xsl:when>
					<xsl:when test="$otapStage = 'TST' or $otapStage = 'ACC'">
						b3f3170a-1724-4145-b971-e27154b95d2c
					</xsl:when>
					<xsl:when test="$otapStage = 'PRD'">
						2fe2ddc2-8bc9-4bf8-9a90-2dfb7c16ac3b
					</xsl:when>
            	</xsl:choose>
            </templateId>
        </email>
	</xsl:template>

</xsl:stylesheet>		