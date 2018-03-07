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
            	<argument>
            		<name>
            			-url-
            		</name>
            		<value>
            			<xsl:choose>
							<xsl:when test="$otapStage = 'LOC'">
								http://localhost/iaf4asap/#/activate/<xsl:value-of select="$resetToken"/>
							</xsl:when>
							<xsl:when test="$otapStage = 'TST' or $otapStage = 'ACC'">
								https://test.priooo.com/#/activate/<xsl:value-of select="$resetToken"/>
							</xsl:when>
							<xsl:when test="$otapStage = 'PRD'">
								https://www.priooo.com/#/activate/<xsl:value-of select="$resetToken"/>
							</xsl:when>
						</xsl:choose>
            		</value>
            	</argument>
            </arguments>
            <templateId>
            	<xsl:choose>
					<xsl:when test="$otapStage = 'LOC'">
						0ba2111e-3511-41b1-807d-d139e1d6a0c9
					</xsl:when>
					<xsl:when test="$otapStage = 'TST' or $otapStage = 'ACC'">
						0ba2111e-3511-41b1-807d-d139e1d6a0c9
					</xsl:when>
					<xsl:when test="$otapStage = 'PRD'">
						19db0959-87f6-4f60-a083-42c73f414d5e
					</xsl:when>
            	</xsl:choose>
            </templateId>
        </email>
	</xsl:template>

</xsl:stylesheet>		