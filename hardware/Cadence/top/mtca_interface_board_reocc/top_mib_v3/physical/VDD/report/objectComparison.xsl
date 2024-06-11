<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:include href="shared.xsl"/>
    <!-- root template is there -->

    <!-- 'function' templates called from shared -->
    <xsl:template name="_e_includeScripts">
        <xsl:call-template name="_i_ScriptLink">
            <xsl:with-param name="name">jquery.js</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="_i_ScriptLink">
            <xsl:with-param name="name">filter.js</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="_i_ScriptLink">
            <xsl:with-param name="name">perLayer.js</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="_i_ScriptLink">
            <xsl:with-param name="name">objectComparison.js</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="_i_ScriptLink">
            <xsl:with-param name="name">common.js</xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="_e_includeStyles">
        <xsl:call-template name="_i_includeStyleLink">
            <xsl:with-param name="name">default.css</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="_i_includeStyleLink">
            <xsl:with-param name="name">treeview.css</xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="_e_pageLayout">
        <div id="main-frame" filter-setting="{@Filter}">
            <xsl:apply-templates select="Tree/Item"/>
            <xsl:apply-templates select="Tree//Item[count(Item) = 0]"/>
        </div>
    </xsl:template>
    <xsl:template name="_e_DefaultNonScalarStyle">
        <xsl:text>showDiff </xsl:text>
    </xsl:template>
    <xsl:template name="_e_ViewSelector">
        <xsl:param name="global"/>
        <xsl:if test="$global">Show all per-layer changes:</xsl:if>
        <xsl:element name="table">
            <xsl:attribute name="class">
                <xsl:text>viewSelector</xsl:text>
                <xsl:if test="$global">
                    <xsl:text> global</xsl:text>
                </xsl:if>
            </xsl:attribute>
            <tbody>
                <tr>
                    <td title="show Differences only" class="D">D</td>
                    <td title="show All layer values" class="A">A</td>
                </tr>
            </tbody>
        </xsl:element>
    </xsl:template>
    <xsl:template name="_e_ChgMarker">
        <xsl:param name="threecols"/>
        <tr class="noChange short">
            <xsl:element name="td">
                <xsl:attribute name="colspan">
                    <xsl:choose>
                        <xsl:when test="$threecols">4</xsl:when>
                        <xsl:otherwise>3</xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
                <xsl:text>...</xsl:text>
            </xsl:element>
        </tr>
    </xsl:template>
    <xsl:template name="_e_NavLinks">
    </xsl:template>
    <!-- Templates by match -->
    <xsl:template match="Item">
        <div filter="{@Filter}">
            <xsl:variable name="Ref" select="@Ref"/>
            <xsl:apply-templates select="/ConstraintDifferenceReport/Summaries/*[@ID=$Ref]"/>
        </div>
    </xsl:template>
    <xsl:template match="Notes">
        <xsl:call-template name="_i_SummaryNotesHeader"/>
        <ul class="notes">
            <xsl:apply-templates select="./Note"/>
        </ul>
    </xsl:template>
    <xsl:template match="/ConstraintDifferenceReport/Summaries/MainSummary">
        <xsl:element name="div">
            <br/>
            <h1>
                <xsl:value-of select="/ConstraintDifferenceReport/@Title"/>
            </h1>
            <br/>
            <table id="ReportSummary">
                <tbody>
                    <xsl:apply-templates select="/ConstraintDifferenceReport/RptSummary/Entry"/>
                </tbody>
            </table>
        </xsl:element>
    </xsl:template>
    <xsl:template match="Notes">
        <xsl:call-template name="_i_SummaryNotesHeader"/>
        <ul class="notes">
            <xsl:apply-templates select="./Note"/>
        </ul>
    </xsl:template>
</xsl:stylesheet>
