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
            <xsl:with-param name="name">treeview.js</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="_i_ScriptLink">
            <xsl:with-param name="name">perLayer.js</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="_i_ScriptLink">
            <xsl:with-param name="name">common.js</xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="_e_includeStyles">
        <xsl:call-template name="_i_includeStyleLink">
            <xsl:with-param name="name">treeview.css</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="_i_includeStyleLink">
            <xsl:with-param name="name">default.css</xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="_e_pageLayout">
        <table id="main-frame">
            <tbody>
                <tr id="mainRow">
                    <td class="pane" id="treeview">
                        <div class="paneCont" id="div-treeview">
                            <ul id="tree" class="treeview">
                                <xsl:apply-templates select="Tree/Item">
                                    <xsl:with-param name="class">expanded</xsl:with-param>
                                    <xsl:with-param name="extra-class">
                                        <xsl:text> root</xsl:text>
                                    </xsl:with-param>
                                </xsl:apply-templates>
                            </ul>
                        </div>
                    </td>
                    <td class="vsplitter" ppane="treeview" npane="details" container="bottom"/>
                    <td class="pane" id="details">
                        <div class="paneCont" id="div-details"> </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <div id="hidden-cache" style="display:none">
            <xsl:apply-templates select="Summaries/*"/>
        </div>
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
    <xsl:template name="_e_DefaultNonScalarStyle">
        <xsl:text>showDiff </xsl:text>
    </xsl:template>
    <xsl:template name="_e_NavLinks"/>
    <!-- Templates by match -->
    <xsl:template match="Item">
        <xsl:param name="class">collapsed</xsl:param>
        <xsl:param name="parentNdx"/>
        <xsl:param name="extra-class"/>
        <xsl:element name="li">
            <xsl:attribute name="class">
                <xsl:if test="./Item">
                    <!-- if not leaf -->
                    <xsl:value-of select="$class"/>
                </xsl:if>
                <xsl:value-of select="$extra-class"/>
            </xsl:attribute>
            <xsl:attribute name="ndx">
                <xsl:value-of select="$parentNdx"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="position()"/>
            </xsl:attribute>
            <xsl:attribute name="id">
                <xsl:value-of select="@Ref"/>
            </xsl:attribute>
            <xsl:attribute name="filter">
                <xsl:value-of select="@Filter"/>
            </xsl:attribute>
            <xsl:if test="./Item">
                <!-- hitarea used only for parents -->
                <xsl:element name="div">
                    <xsl:attribute name="class">hitarea</xsl:attribute>
                    <xsl:attribute name="id">
                        <xsl:value-of select="@Ref"/>
                        <xsl:text>-hitarea</xsl:text>
                    </xsl:attribute>
                    <xsl:text> </xsl:text>
                    <!--// Serge 18.12.2013: IMPORTANT: this space is here for a reason. Div elements cannot be empty - modern browsers will treat it as a parent for all following elements...-->
                </xsl:element>
            </xsl:if>
            <xsl:element name="span">
                <xsl:attribute name="class">
                    <xsl:text>treeItemName</xsl:text>
                    <xsl:value-of select="$extra-class"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="@Status"/>
                </xsl:attribute>
                <xsl:value-of select="@Name"/>
            </xsl:element>
            <xsl:if test="./Item">
                <xsl:element name="ul">
                    <xsl:attribute name="id">
                        <xsl:value-of select="@Ref"/>
                        <xsl:text>-nested</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates select="./Item">
                        <xsl:with-param name="parentNdx">
                            <xsl:value-of select="$parentNdx"/>
                            <xsl:text>.</xsl:text>
                            <xsl:value-of select="position()"/>
                        </xsl:with-param>
                    </xsl:apply-templates>
                </xsl:element>
            </xsl:if>
        </xsl:element>
    </xsl:template>
    <xsl:template match="/ConstraintDifferenceReport/Notes">
        <div class="expanded" id="summary-notes">
            <div class="hitarea" id="summary-notes-hitarea">
                <xsl:text> </xsl:text> <!--// Serge 18.12.2013: IMPORTANT: this space is here for a reason. Div elements cannot be empty - modern browsers will treat it as a parent for all following elements...-->
            </div>
            <xsl:call-template name="_i_Notes"/>
        </div>
    </xsl:template>
</xsl:stylesheet>
