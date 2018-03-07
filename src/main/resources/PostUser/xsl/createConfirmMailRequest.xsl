<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" method="xml" indent="no"/>
	
	<xsl:param name="fullName"/>
	<xsl:param name="projectName"/>
	<xsl:param name="otapStage"/>
	
	<xsl:template match="/">
		<email>
            <uid><xsl:value-of select="result/rowset/row/field[@name='UID']"/></uid>
            <subject>You have been added to a Priooo project.</subject>
            <message>
            	The product owner has added you to the <xsl:value-of select="$projectName"/> project.
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
            	<argument>
            		<name>
            			-inviteBy-
            		</name>
            		<value>
            			<xsl:value-of select="$fullName"/>
            		</value>
            	</argument>
            </arguments>
            <templateId>
            	<xsl:choose>
					<xsl:when test="$otapStage = 'LOC'">
						7747adea-e7b7-4263-a35d-fcf74977c1f9
					</xsl:when>
					<xsl:when test="$otapStage = 'TST' or $otapStage = 'ACC'">
						7747adea-e7b7-4263-a35d-fcf74977c1f9
					</xsl:when>
					<xsl:when test="$otapStage = 'PRD'">
						c3e7b940-66ef-4c6e-8988-c0a4855d9aa9
					</xsl:when>
            	</xsl:choose>
            </templateId>
        </email>
	</xsl:template>

</xsl:stylesheet>		