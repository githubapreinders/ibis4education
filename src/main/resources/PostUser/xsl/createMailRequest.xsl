<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" method="xml" indent="no"/>
	
	<xsl:param name="resetToken"/>
	<xsl:param name="projectName"/>
	<xsl:param name="otapStage"/>
	<xsl:param name="fullName"/>
	
	<xsl:template match="/">
		<email>
            <uid><xsl:value-of select="result/rowset/row/field[@name='UID']"/></uid>
            <subject>You have been added to a Priooo project</subject>
            <message>
            	<!-- You have been invited to use Priooo by <xsl:value-of select="$fullName"/>
            	
            	<xsl:choose>
					<xsl:when test="$otapStage = 'LOC'">
						Visit <![CDATA[<a href="]]>localhost/iaf4asap/#/resetpassword/<xsl:value-of select="$resetToken"/><![CDATA[">]]>this link<![CDATA[</a>]]> to active your account.
					</xsl:when>
					<xsl:when test="$otapStage = 'TST' or $otapStage = 'ACC'">
						Visit <![CDATA[<a href="]]>https://test.priooo.com/#/resetpassword/<xsl:value-of select="$resetToken"/><![CDATA[">]]>this link<![CDATA[</a>]]> to active your account.
					</xsl:when>
					<xsl:when test="$otapStage = 'PRD'">
						Visit <![CDATA[<a href="]]>https://www.priooo.com/#/resetpassword/<xsl:value-of select="$resetToken"/><![CDATA[">]]>this link<![CDATA[</a>]]> to active your account.
					</xsl:when>
				</xsl:choose> -->
            </message>
            <arguments>
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
            	<argument>
            		<name>
            			-inviteBy-
            		</name>
            		<value>
            			<xsl:value-of select="$fullName"/>
            		</value>
            	</argument>
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
						f5263586-bfea-4922-8ff6-8e88adf0eda8
					</xsl:when>
					<xsl:when test="$otapStage = 'TST' or $otapStage = 'ACC'">
						f5263586-bfea-4922-8ff6-8e88adf0eda8
					</xsl:when>
					<xsl:when test="$otapStage = 'PRD'">
						c02f1e50-d569-41d9-87ec-933cded8a330
					</xsl:when>
            	</xsl:choose>
            </templateId>
        </email>
	</xsl:template>

</xsl:stylesheet>		