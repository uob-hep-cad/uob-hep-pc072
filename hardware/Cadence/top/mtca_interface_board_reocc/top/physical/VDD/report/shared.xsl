<?xml version="1.0" encoding="utf-8"?>
<!--Stylesheet for inclusion only - not for indepent use-->
<!--naming: _e_ are templates defined in the including files, but used here-->
<!--naming: _i_ are templates defined this file, but used in including files-->
<!--naming: __ are locally-used templates-->
<!--naming:     insert - no params - just dumps the content or formatting-->
<!--naming:     format - with param - formats value passed as param-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Templates by match -->
  <xsl:template match="/ConstraintDifferenceReport">
    <html>
      <head>
        <xsl:call-template name="_e_includeScripts"/>
        <xsl:call-template name="_e_includeStyles"/>
        <title dirPath="{@Path}">
          <xsl:value-of select="@Type"/>
        </title>
        <script>
            $(document).ready(function () {
            addToolbar();
            });
        </script>
      </head>
      <body>
        <xsl:choose>
          <xsl:when test="count(/ConstraintDifferenceReport/Summaries/MainSummary/*) > 0">
            <xsl:call-template name="_e_pageLayout"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:apply-templates select="/ConstraintDifferenceReport/Summaries/MainSummary"/>
          </xsl:otherwise>
        </xsl:choose>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="/ConstraintDifferenceReport/Summaries/MainSummary">
    <xsl:element name="div">
      <xsl:attribute name="id">
        <xsl:value-of select="@ID"/>
        <xsl:text>-cache</xsl:text>
      </xsl:attribute>
      <div id="filter-note-in-main-summary">
        <xsl:text> </xsl:text>
        <!-- placeholder for filter notes - div cannot be empty -->
      </div>
      <h1>Report summary</h1>
      <table id="ReportSummary">
        <tbody>
          <xsl:apply-templates select="/ConstraintDifferenceReport/RptSummary/Entry"/>
        </tbody>
      </table>
      <xsl:choose>
        <xsl:when test="count(/ConstraintDifferenceReport/@Status) = 0">
          <h1>
            <xsl:element name="a">
              <xsl:attribute name="name">
                <xsl:value-of select="@ID"/>
              </xsl:attribute>
              <xsl:text>Summary</xsl:text>
            </xsl:element>
          </h1>
          <table id="Summary">
            <xsl:call-template name="__groupSummaryTableHeader"/>
            <tbody>
              <xsl:apply-templates select="ChangedObject"></xsl:apply-templates>
            </tbody>
          </table>
          <xsl:apply-templates select="Attributes"/>
        </xsl:when>
        <xsl:otherwise>
          <br/>
          <br/>
          <br/>
          <br/>
          <xsl:element name="h1">
            <xsl:choose>
              <xsl:when test="/ConstraintDifferenceReport/@Status = 'no-change'">No changes found</xsl:when>
              <xsl:when test="/ConstraintDifferenceReport/@Status = 'not-run'">No comparison performed</xsl:when>
              <xsl:when test="/ConstraintDifferenceReport/@Status = 'error'">
                <xsl:attribute name="class">Conflict</xsl:attribute>
                <xsl:text>Operation aborted</xsl:text>
              </xsl:when>
            </xsl:choose>
          </xsl:element>
          <br/>
          <br/>
          <br/>
          <br/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="/ConstraintDifferenceReport/Notes"/>
      <xsl:if test="/ConstraintDifferenceReport/@Status = ''">
        <h3>Legend</h3>
        <table>
          <thead>
            <tr>
              <td>Visual display</td>
              <td>Description</td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="selected">selected value</td>
              <td>
                Value assigned to the <xsl:value-of select="/ConstraintDifferenceReport/RptSummary/@Col1"/> as a result of the operation
              </td>
            </tr>
            <xsl:if test="/ConstraintDifferenceReport/Tree/Item/@Status = 'Conflict'">
              <tr>
                <td class="Conflict">conflict</td>
                <td>
                  When both <xsl:value-of select="/ConstraintDifferenceReport/RptSummary/@Col1"/> and <xsl:value-of select="/ConstraintDifferenceReport/RptSummary/@Col2"/> values have been changed since last flow
                </td>
              </tr>
            </xsl:if>
            <tr>
              <td class="noChange">no change</td>
              <td>Elements of the array attributes, where no change has been found</td>
            </tr>
            <tr>
              <td class="found-permanent">text search</td>
              <td>Pages/text, where the text search string has been found</td>
            </tr>
            <tr>
              <td class="Pending">text search</td>
              <td>Does not work?</td>
            </tr>
            <!-- Could use to color code Layout/Schematic only differences. Need to update default.css to recognize these 'classes'.
            <tr>
              <td class="Schematic only">text search</td>
              <td>??</td>
            </tr>
            <tr>
              <td class="Layout only">text search</td>
              <td>??</td>
            </tr>
            -->
          </tbody>
        </table>
      </xsl:if>
    </xsl:element>
  </xsl:template>
  <xsl:template match="/ConstraintDifferenceReport/RptSummary/Entry">
    <tr>
      <td>
        <xsl:value-of select="@Name"/>
      </td>
      <xsl:element name ="td">
        <xsl:if test="@Status">
          <xsl:attribute name="class">
            <xsl:value-of select="@Status"/>
          </xsl:attribute>
        </xsl:if>
        <xsl:value-of select="."/>
      </xsl:element>
    </tr>
  </xsl:template>
  <xsl:template match="ChangedObject">
    <tr filter="{@Filter}">
      <td>
        <xsl:call-template name="__objName"/>
      </td>
      <xsl:choose>
        <xsl:when test="@ObjNumber">
          <!-- New all differences Report contains description at higher level summary -->
          <xsl:if test="count(@Status)>0">
            <xsl:choose>
              <xsl:when test="@Status='Pending'">
                <td>Differences that are pending resolution between the schematic and layout CM views.</td>
              </xsl:when>
              <xsl:when test="@Status='Conflict'">
                <td>This indicates conflicting value changes in both schematic and layout CM views since the last update.</td>
              </xsl:when>
              <xsl:otherwise>
                <td>Differences that were resolved in the current update.</td>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:if>
          <xsl:if test="count(@Status)=0">
            <td>
              <xsl:value-of select="@ObjNumber"/>
            </td>
          </xsl:if>
        </xsl:when>
        <xsl:otherwise>
          <xsl:if test="../@Name='NetClasses'">
            <xsl:element name="td">
              <xsl:if test="substring(@Domain,1,1) = '+'">
                <xsl:attribute name="class">markCell</xsl:attribute>
                <xsl:text>x</xsl:text>
              </xsl:if>
            </xsl:element>
            <xsl:element name="td">
              <xsl:if test="substring(@Domain,2,1) = '+'">
                <xsl:attribute name="class">markCell</xsl:attribute>
                <xsl:text>x</xsl:text>
              </xsl:if>
            </xsl:element>
            <xsl:element name="td">
              <xsl:if test="substring(@Domain,3,1) = '+'">
                <xsl:attribute name="class">markCell</xsl:attribute>
                <xsl:text>x</xsl:text>
              </xsl:if>
            </xsl:element>
            <xsl:element name="td">
              <xsl:if test="substring(@Domain,4,1) = '+'">
                <xsl:attribute name="class">markCell</xsl:attribute>
                <xsl:text>x</xsl:text>
              </xsl:if>
            </xsl:element>
            <xsl:element name="td">
              <xsl:if test="@PowerIntegrity">
                <xsl:attribute name="class">markCell</xsl:attribute>
              </xsl:if>
            </xsl:element>
          </xsl:if>
          <xsl:if test="count(../*[@Membership > 0]) > 0">
            <td>
              <xsl:value-of select="@Membership"/>
            </td>
          </xsl:if>
          <xsl:if test="count(../*[@Reference > 0]) > 0">
            <td>
              <xsl:value-of select="@Reference"/>
            </td>
          </xsl:if>
          <xsl:if test="count(../*[@Child > 0]) > 0">
            <td>
              <xsl:value-of select="@Child"/>
            </td>
          </xsl:if>
          <xsl:if test="count(../*[@Flattened > 0]) > 0">
            <td>
              <xsl:value-of select="@Flattened"/>
            </td>
          </xsl:if>
          <xsl:if test="count(../*[@Attributes > 0]) > 0">
            <td>
              <xsl:value-of select="@Attributes"/>
            </td>
          </xsl:if>
          <xsl:if test="count(../*[@Notes > 0]) > 0">
            <td>
              <xsl:value-of select="@Notes"/>
            </td>
          </xsl:if>
          <xsl:if test="count(/ConstraintDifferenceReport[@NoStatusClmn='1'])=0">
          <xsl:element name="td">
            <xsl:call-template name="__status"/>
          </xsl:element>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
  </xsl:template>
  <xsl:template match="/ConstraintDifferenceReport/Summaries/GroupSummary">
    <xsl:element name="div">
      <xsl:attribute name="id">
        <xsl:value-of select="@ID"/>
        <xsl:text>-cache</xsl:text>
      </xsl:attribute>
      <h2>
        <xsl:element name="a">
          <xsl:attribute name="name">
            <xsl:value-of select="@ID"/>
          </xsl:attribute>
          <xsl:value-of select="@Name"/>
        </xsl:element>
      </h2>
      <xsl:call-template name="_e_NavLinks"/>
      <xsl:choose>
        <xsl:when test="count(./Children) > 0">
          <xsl:apply-templates select="./*"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="__groupSummaryTable"/>
        </xsl:otherwise>
      </xsl:choose>
      <hr/>
      <xsl:apply-templates select="./Note"/>
    </xsl:element>
    <!-- in printable reports objects should follow their summaries -->
    <xsl:variable name="key" select="substring(@Name, 1, string-length(@Name)-2)"/>
  </xsl:template>
  <xsl:template match="/ConstraintDifferenceReport/Summaries/ObjectSummary">
	<xsl:param name="id" select="@ID"/>
	<!-- for non table related object summaries, it will fetch generic table if exists any for it-->
     <xsl:if test="not(./GenericTable)">
	  <xsl:element name="div">
		<xsl:attribute name="id">
			<xsl:value-of select="@ID"/>
			<xsl:text>-cache</xsl:text>
		</xsl:attribute>
		<!--1st part(non generic table stuff): if any object has only generic table info then ignore this first part-->
			<h2>
			  <xsl:element name="a">
				<xsl:attribute name="name">
				<xsl:value-of select="@ID"/>
			    </xsl:attribute>
				<xsl:value-of select="@Type"/>
				<!-- will be there only for layers-->
				<xsl:text> </xsl:text>
				<xsl:value-of select="@Kind"/>
				<xsl:text>: </xsl:text>
				<xsl:value-of select="@Name"/>
				<xsl:if test="count(@Status)>0">
				<xsl:text> - </xsl:text>
				  <xsl:value-of select="@Status"/>
				</xsl:if>
			  </xsl:element>
			</h2>
		<xsl:call-template name="_e_NavLinks"/>
		<xsl:apply-templates select="./*">
			<xsl:sort select="name()"/>
			<xsl:sort select="@Type"/>
		</xsl:apply-templates>
		<!--2nd part: add generic table having matching id with this object summary(if exists any) and ignore rest-->
		<xsl:for-each select="/ConstraintDifferenceReport/Summaries/ObjectSummary[@ID = $id]/GenericTable">
			<xsl:call-template name="__genericTable"/>
		</xsl:for-each>
	  </xsl:element>
	</xsl:if>
  </xsl:template>
  <!-- Attribute-related stuff -->
  <xsl:template match="/ConstraintDifferenceReport/Summaries/ObjectSummary/Other">
    <h3>Notes:</h3>
    <xsl:call-template name="__attributeTable">
      <xsl:with-param name="FirstCell"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template match="Attributes">
    <xsl:call-template name="_i_Attributes"/>
  </xsl:template>
  <!-- generic table-related stuff -->
  <xsl:template name="__genericTable">
	<xsl:param name="NumCols" select="@NumCols"/>
	<xsl:param name="GenID" select="../@ID"/>
	<div>
		<xsl:element name="div">
			<xsl:attribute name="id">
				<xsl:value-of select="@ID"/>
				<xsl:text>-cache</xsl:text>
			</xsl:attribute>
			<h2>
				<br/>
				<br/>
				<br/>
				<xsl:element name="a">
					<xsl:value-of select="@title"/>
				</xsl:element>
			</h2>
		</xsl:element>
		<!-- genericContainer style class draws rectangular box around the generic table -->
		<div class="genericContainer">
			<table>
				<thead>
					<br/>
					<xsl:for-each select="headers/node()">
						<xsl:if test="name()!= ''">
							<td>
								<xsl:value-of select="node()"/>
							</td>
						</xsl:if>
					</xsl:for-each>
				</thead>
				<tbody>
					<xsl:for-each select="rows/node()">
						<tr>
							<xsl:call-template name="__addRows">
								<xsl:with-param name="index" select="0"/>
								<xsl:with-param name="maxValue" select="$NumCols"/>
							</xsl:call-template>
						</tr>
					</xsl:for-each>
				</tbody>
			</table>
			<div class="notes">
				<xsl:apply-templates select="./Notes">
					<xsl:sort select="name()"/>
					<xsl:sort select="@Type"/>
				</xsl:apply-templates>
			</div>
		</div>
	</div>
  </xsl:template>
  <xsl:template match="GenericTable/Notes">
    <xsl:if test="count(./Attribute) > 0">
      <xsl:call-template name="_i_Attributes"/>
    </xsl:if>
    <xsl:if test="count(./Note) > 0">
      <xsl:call-template name="_i_Notes"/>
    </xsl:if>
  </xsl:template>
  <!-- add rows to generic table -->
  <xsl:template name="__addRows">
	<xsl:param name="index"/>
	<xsl:param name="maxValue"/>
	
	<!-- bind cells to column ids -->
	<xsl:for-each select="node()">
		<xsl:if test="@id = $index">
			<td>
				<xsl:value-of select="node()"/>
			</td>
		</xsl:if>
	</xsl:for-each>
	  
	<xsl:if test="$index &lt; $maxValue+1">
		<xsl:call-template name="__addRows">
			<xsl:with-param name="index" select="$index + 1" />
			<xsl:with-param name="maxValue" select="$maxValue" />
		</xsl:call-template>
	</xsl:if>
  </xsl:template>
  <xsl:template match="ObjectSummary/Notes">
    <xsl:if test="count(./Attribute) > 0">
      <xsl:call-template name="_i_Attributes"/>
    </xsl:if>
    <xsl:if test="count(./Note) > 0">
      <xsl:call-template name="_i_Notes"/>
    </xsl:if>
  </xsl:template>
  <xsl:template match="/ConstraintDifferenceReport/Summaries/ObjectSummary/Children">
    <hr width="90%"/>
    <xsl:apply-templates select="./Children"/>
  </xsl:template>
  <xsl:template match="Children/Children">
    <div filter="{../@Filter}">
      <h3>
        <xsl:value-of select="@Type"/>
        <xsl:text> changes:</xsl:text>
      </h3>
      <xsl:call-template name="__groupSummaryTable"/>
    </div>
  </xsl:template>
  <xsl:template match="Attribute">
    <xsl:param name="threecols"/>
    <xsl:param name="NeedParent" select="0"/>
    <tr filter="{@Filter}">
      <td>
        <xsl:value-of select="@Name"/>
      </td>
      <!-- if parent row is present in current table -->
      <xsl:if test="$NeedParent > 0">
        <!-- if current node is the first one with such parent -->
        <xsl:variable name="CurPName" select="@PName"/>
        <xsl:if test="(@Name = (../Attribute[@PName=$CurPName])[1]/@Name) or ((count($CurPName) = 0) and (@Name = (../Attribute[count(@PName)=0])[1]/@Name))">
          <!-- span through all rows with such parent -->
          <xsl:element name="td">
            <xsl:attribute name="rowspan">
              <xsl:choose>
                <xsl:when test="count($CurPName)=0">
                  <xsl:value-of select="count(../Attribute[count(@PName)=0])"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="count(../Attribute[@PName=$CurPName])"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:attribute>
            <xsl:choose>
              <xsl:when test="@PName">
                <xsl:call-template name="__objName">
                  <xsl:with-param name="ObjName">
                    <xsl:value-of select="@PName"/>
                  </xsl:with-param>
                </xsl:call-template>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="@PName"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:element>
        </xsl:if>
      </xsl:if>
      <xsl:choose>
        <xsl:when test="@Type='Scalar'">
          <xsl:apply-templates select="Value">
            <xsl:with-param name="threecols" select="$threecols"/>
          </xsl:apply-templates>
        </xsl:when>
        <xsl:when test="@Type='Table'">
          <xsl:apply-templates select="./Table"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:element name="td">
            <xsl:attribute name="ID">
              <xsl:value-of select="generate-id()"/>
            </xsl:attribute>
            <xsl:attribute name="colspan">
              <xsl:choose>
                <xsl:when test="$threecols='true'">3</xsl:when>
                <xsl:otherwise>2</xsl:otherwise>
              </xsl:choose>
            </xsl:attribute>
            <xsl:attribute name="class">
              <xsl:text>nonScalarDiff </xsl:text>
              <xsl:call-template name="_e_DefaultNonScalarStyle"/>
            </xsl:attribute>
            <xsl:call-template name="_e_ViewSelector"/>
            <xsl:choose>
              <xsl:when test="@Type='Array'">
                <xsl:call-template name="__multiValueContent"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:apply-templates select="./ValueGrp"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:element>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:if test="count(/ConstraintDifferenceReport[@NoStatusClmn='1'])=0">
        <xsl:element name="td">
          <xsl:call-template name="__status"/>
        </xsl:element>
      </xsl:if>
    </tr>
  </xsl:template>
  <xsl:template match="ValueGrp">
    <h4>
      <xsl:choose>
        <xsl:when test="./@Type = 'GenericLayers'">Generic Layer values</xsl:when>
        <xsl:when test="./@Type = 'Layers'">Layer values</xsl:when>
      </xsl:choose>
    </h4>
    <xsl:call-template name="__multiValueContent"/>
  </xsl:template>
  <xsl:template match="Value">
    <xsl:param name="threecols"/>
    <xsl:param name="needLyr" select="/Empty"/>
    <xsl:param name="i"/>
    <xsl:if test="count($needLyr) > 0">
      <td>
        <xsl:value-of select="$needLyr/Layer[$i]/@Name"/>
      </td>
    </xsl:if>
    <xsl:apply-templates select="Dst"/>
    <xsl:apply-templates select="Src"/>
    <xsl:if test="$threecols='true'">
      <xsl:apply-templates select="Base"/>
    </xsl:if>
  </xsl:template>
  <!-- Membership-related stuff -->
  <xsl:template match="Associations">
    <xsl:if test="count(Reference) > 0">
      <div filter="{@Filter}">
        <h3>
          <xsl:choose>
            <!-- ALLDIFFS_FIXSOON: Update XML writer to include Status with Association 'element'? -->
            <xsl:when test="@Status = 'Pending'">
              <xsl:value-of select="@Type"/>
              <xsl:text> differences:</xsl:text>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="@Type"/>
              <xsl:text> changes:</xsl:text>
            </xsl:otherwise>
          </xsl:choose>
        </h3>
        <table>
          <thead>
            <tr>
              <xsl:choose>
                <xsl:when test="count(/ConstraintDifferenceReport[@NoStatusClmn='1'])=0 or @Status = 'Pending'">
                  <td>Name</td>
                  <td>Object type</td>
                  <td>Status</td>
                </xsl:when>
                <xsl:otherwise>
                  <td>Object type</td>
                  <xsl:call-template name="__THeadCell">
                    <xsl:with-param name="name">__col1</xsl:with-param>
                  </xsl:call-template>
                  <xsl:call-template name="__THeadCell">
                    <xsl:with-param name="name">__col2</xsl:with-param>
                  </xsl:call-template>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </thead>
          <tbody>
            <xsl:apply-templates select="Reference">
              <xsl:sort select="@Kind"/>
              <xsl:sort select="@SortIndex" data-type="number"/>
              <xsl:sort select="@Name"/>
            </xsl:apply-templates>
          </tbody>
        </table>
      </div>
    </xsl:if>
  </xsl:template>
  <xsl:template match="Reference">
    <tr filter="{@Filter}">
      <xsl:choose>
        <xsl:when test="count(/ConstraintDifferenceReport[@NoStatusClmn='1'])=0 or @Status = 'Pending'">
          <td>
            <xsl:call-template name="__objName"/>
          </td>
          <td>
            <xsl:value-of select="@Kind"/>
          </td>
          <td>
            <xsl:choose>
              <xsl:when test="@Add='0'">Delete</xsl:when>
              <xsl:when test="@Add='1'">Add</xsl:when>
              <xsl:when test="@Add='2'">
                <xsl:value-of select="/ConstraintDifferenceReport/RptSummary/@Col1"/> only
              </xsl:when>
              <xsl:when test="@Add='3'">
                <xsl:value-of select="/ConstraintDifferenceReport/RptSummary/@Col2"/> only               
              </xsl:when>
            </xsl:choose>
          </td>
        </xsl:when>
        <xsl:otherwise>
          <td>
            <xsl:value-of select="@Kind"/>
          </td>
          <xsl:if test="@Add='1'">
            <td/>
          </xsl:if>
          <td>
            <xsl:call-template name="__objName"/>
          </td>
          <xsl:if test="@Add='0'">
            <td/>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
  </xsl:template>
  <xsl:template match="Attribute/Table">
    <xsl:element name="td">
      <xsl:if test="./@Type = ../@Taken and count(/ConstraintDifferenceReport[@NoStatusClmn='1'])=0">
        <xsl:attribute name="class">selected</xsl:attribute>
      </xsl:if>
      <table>
        <thead>
          <xsl:apply-templates select="../Cols/*"/>
        </thead>
        <tbody>
          <xsl:apply-templates select="./Value"/>
        </tbody>
      </table>
    </xsl:element>
  </xsl:template>
  <xsl:template match="Attribute/Table/Value">
    <tr>
      <xsl:apply-templates select="./c"/>
    </tr>
  </xsl:template>
  <xsl:template match="c">
    <td>
      <xsl:value-of select="."/>
    </td>
  </xsl:template>

  <!-- Notes -->
  <xsl:template name="_i_SummaryNotesHeader">
    <h3>
      <xsl:if test="Note[@Type = 'Error']">
        <xsl:value-of select="count(Note[@Type = 'Error'])"/>
        <xsl:text> error</xsl:text>
        <xsl:if test="count(Note[@Type = 'Error']) > 1">
          <xsl:text>s</xsl:text>
        </xsl:if>
      </xsl:if>
      <xsl:if test="Note[@Type = 'Warning']">
        <xsl:if test="Note[@Type = 'Error']">
          <xsl:text> / </xsl:text>
        </xsl:if>
        <xsl:value-of select="count(Note[@Type = 'Warning'])"/>
        <xsl:text> warning</xsl:text>
        <xsl:if test="count(Note[@Type = 'Warning']) > 1">
          <xsl:text>s</xsl:text>
        </xsl:if>
      </xsl:if>
      <xsl:if test="Note[@Type = 'Note']">
        <xsl:if test="Note[@Type = 'Warning'] or Note[@Type = 'Error']">
          <xsl:text> / </xsl:text>
        </xsl:if>
        <xsl:value-of select="count(Note[@Type = 'Note'])"/>
        <xsl:text> note</xsl:text>
        <xsl:if test="count(Note[@Type = 'Note']) > 1">
          <xsl:text>s</xsl:text>
        </xsl:if>
      </xsl:if>
    </h3>
  </xsl:template>
  <xsl:template match="Note">
    <li class="{@Type}">
      <b>
        <xsl:choose>
          <xsl:when test="count(@Ref) > 0">
            <xsl:call-template name="__objName">
              <xsl:with-param name="ObjName" select="@Type"/>
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="@Type"/>
          </xsl:otherwise>
        </xsl:choose>
      </b>
      <xsl:text>: </xsl:text>
      <xsl:value-of select="@Text"/>
      <xsl:if test="@Log">
        <xsl:element name="a">
          <xsl:attribute name="href">
            <xsl:value-of select="@Log"/>
          </xsl:attribute>
          <xsl:text> See log for details...</xsl:text>
        </xsl:element>
      </xsl:if>
    </li>
  </xsl:template>

  <!-- Local 'function' templates to be called from including scripts -->
  <xsl:template name="_i_ScriptLink">
    <xsl:param name="name"/>
    <xsl:element name="script">
      <xsl:attribute name="type">text/javascript</xsl:attribute>
      <xsl:attribute name="src">
        <xsl:value-of select="@Path"/>
        <xsl:text>/</xsl:text>
        <xsl:value-of select="$name"/>
      </xsl:attribute>
      <xsl:text> </xsl:text>
      <!-- cannot have <script/> need closing tag -->
    </xsl:element>
  </xsl:template>
  <xsl:template name="_i_includeStyleLink">
    <xsl:param name="name"/>
    <xsl:param name="media">all</xsl:param>
    <xsl:element name="link">
      <xsl:attribute name="rel">stylesheet</xsl:attribute>
      <xsl:attribute name="type">text/css</xsl:attribute>
      <xsl:attribute name="media">
        <xsl:value-of select="$media"/>
      </xsl:attribute>
      <xsl:attribute name="href">
        <xsl:value-of select="@Path"/>
        <xsl:text>/</xsl:text>
        <xsl:value-of select="$name"/>
      </xsl:attribute>
    </xsl:element>
  </xsl:template>
  <!-- Local 'function' templates -->
  <xsl:template name="__groupSummaryTableHeader">
    <thead>
      <xsl:choose>
        <xsl:when test="./ChangedObject[@ObjNumber]">
          <!-- Summary tables with number of differences -->
          <xsl:if test="/ConstraintDifferenceReport/@Version='AllDiffs'">
            <!-- New all differences report has new Difference Type and 
                 Group summary which require different table headers -->
            <xsl:choose>
              <xsl:when test="./ChangedObject[@Status]">
                <td>Difference Type</td>
                <td>Description</td>
              </xsl:when>
              <xsl:otherwise>
                <td>Object type</td>
                <td>Total changed objects</td>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:if>
          
          <xsl:if test="count(/ConstraintDifferenceReport[@Version])=0">
            <td>Object type</td>
            <td>Total changed objects</td>
          </xsl:if>
        </xsl:when>
        <xsl:when test="@Name='NetClasses'">
          <tr>
            <td rowspan="2">Object name</td>
            <td colspan="5">Domain</td>
            <xsl:if test="count(./*[@Membership > 0]) > 0">
              <xsl:choose>
                <xsl:when test="count(./*[@Status='Pending'])>0">
                  <td rowspan="2">Membership differences</td>
                </xsl:when>
                <xsl:otherwise>
                  <td rowspan="2">Membership changes</td>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:if>

            <xsl:if test="count(./*[@Reference > 0]) > 0">
              <xsl:choose>
                <xsl:when test="count(./*[@Status='Pending'])>0">
                  <td rowspan="2">Reference differences</td>
                </xsl:when>
                <xsl:otherwise>
                  <td rowspan="2">Reference changes</td>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:if>

            <xsl:if test="count(./*[@Child > 0]) > 0">
              <xsl:choose>
                <xsl:when test="count(./*[@Status='Pending'])>0">
                  <td rowspan="2">Children differences</td>
                </xsl:when>
                <xsl:otherwise>
                  <td rowspan="2">Children changed</td>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:if>

            <xsl:if test="count(./*[@Attributes > 0]) > 0">
              <xsl:choose>
                <xsl:when test="count(./*[@Status='Pending'])>0">
                  <td rowspan="2">Attribute differences</td>
                </xsl:when>
                <xsl:otherwise>
                  <td rowspan="2">Attribute changed</td>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:if>

            <xsl:if test="count(./*[@Notes > 0]) > 0">
              <td rowspan="2">Notes</td>
            </xsl:if>
            
            <xsl:if test="count(/ConstraintDifferenceReport[@NoStatusClmn='1'])=0  or @Status = 'Pending'">
              <td rowspan="2">Status</td>
            </xsl:if>
          </tr>
          <tr>
            <td>E</td>
            <td>P</td>
            <td>S</td>
            <td>SNS</td>
            <td>PI</td>
          </tr>
        </xsl:when>
        <xsl:otherwise>
          <td>Object name</td>
          <xsl:if test="count(./*[@Membership > 0]) > 0">
            <xsl:choose>
              <xsl:when test="count(./*[@Status='Pending'])>0">
                <td>Membership differences</td>
              </xsl:when>
              <xsl:otherwise>
                <td>Membership changes</td>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:if>
          
          <xsl:if test="count(./*[@Reference > 0]) > 0">
            <xsl:choose>
              <xsl:when test="count(./*[@Status='Pending'])>0">
                <td rowspan="2">Reference differences</td>
              </xsl:when>
              <xsl:otherwise>
                <td rowspan="2">Reference changes</td>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:if>
          
          <xsl:if test="count(./*[@Child > 0]) > 0">
            <xsl:choose>
              <xsl:when test="count(./*[@Status='Pending'])>0">
                <td rowspan="2">Children differences</td>
              </xsl:when>
              <xsl:otherwise>
                <td rowspan="2">Children changed</td>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:if>
          
          <xsl:if test="count(./*[@Flattened > 0]) > 0">
            <td>CSet Apply results</td>
          </xsl:if>
          
          <xsl:if test="count(./*[@Attributes > 0]) > 0">
            <xsl:choose>
              <xsl:when test="count(./*[@Status='Pending'])>0">
                <td rowspan="2">Attribute differences</td>
              </xsl:when>
              <xsl:otherwise>
                <td rowspan="2">Attribute changed</td>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:if>
          
          <xsl:if test="count(./*[@Notes > 0]) > 0">
            <td>Notes</td>
          </xsl:if>
          <xsl:if test="count(/ConstraintDifferenceReport[@NoStatusClmn='1'])=0  or @Status = 'Pending'">
            <td>Status</td>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </thead>
  </xsl:template>
  <xsl:template match="Value/*">
    <xsl:variable name="cls">
      <xsl:choose>
        <xsl:when test="../../@Taken = name() and count(/ConstraintDifferenceReport[@NoStatusClmn='1'])=0">selected</xsl:when>
        <xsl:when test="../../@Type='Conflict'">Conflict</xsl:when>
      </xsl:choose>
      <xsl:if test="not(@Inherited = '1')">
        <!-- not in the choose tag so as not to be skipped if selected -->
        <xsl:text> directly-set</xsl:text>
      </xsl:if>
    </xsl:variable>
    <xsl:element name="td">
      <xsl:if test="$cls">
        <xsl:attribute name="class">
          <xsl:value-of select="$cls"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="@Inherited='1'">
        <xsl:attribute name="title">
          <xsl:text>Inherited from Generic Layer '</xsl:text>
          <xsl:variable name="ndx" select="count(../preceding-sibling::*)+1"/>
          <xsl:value-of select="/ConstraintDifferenceReport/Layers/Layer[$ndx]/@Type"/>
          <xsl:text>'</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:value-of select="."/>
    </xsl:element>
  </xsl:template>
  <xsl:template name="__multiValueContent">
    <xsl:variable name="typeAttr" select="./@Type"/>
    <xsl:variable name="layers" select="/ConstraintDifferenceReport/*[name() = $typeAttr]"/>
    <table>
      <xsl:call-template name="__MultiValueTHead"/>
      <tbody>
        <xsl:for-each select="Value">
          <xsl:variable name="c1" select="@Type = 'noChange'"/>
          <xsl:element name="tr">
            <xsl:if test="$c1">
              <xsl:attribute name="class">
                <xsl:text>noChange full</xsl:text>
              </xsl:attribute>
            </xsl:if>
            <xsl:apply-templates select=".">
              <xsl:with-param name="threecols" select="count(./Base)>0"/>
              <xsl:with-param name="needLyr" select="$layers"/>
              <xsl:with-param name="i" select="position()"/>
            </xsl:apply-templates>
          </xsl:element>
          <xsl:variable name="j" select="position() + 1"/>
          <xsl:variable name="c2" select="../Value[$j]"/>
          <xsl:variable name="c3" select="$c2 and ($c2/@Type != 'noChange')"/>
          <xsl:variable name="c4" select="$c2 and not($c2/@Type)"/>
          <xsl:if test="$c1 and (not($c2) or ($c2 and ($c3 or $c4)))">
            <xsl:call-template name="_e_ChgMarker">
              <xsl:with-param name="threecols" select="../@Status='Conflict'"/>
            </xsl:call-template>
          </xsl:if>
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:template>
  <xsl:template name="__MultiValueTHead">
    <thead>
      <xsl:choose>
        <xsl:when test="@Type='Layers'">
          <xsl:call-template name="__THeadCell">
            <xsl:with-param name="name">Layer name</xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <xsl:when test="@Type='GenericLayers'">
          <xsl:call-template name="__THeadCell">
            <xsl:with-param name="name">Generic Layer name</xsl:with-param>
          </xsl:call-template>
        </xsl:when>
      </xsl:choose>
      <xsl:call-template name="__THeadCell">
        <xsl:with-param name="name">__col1</xsl:with-param>
        <xsl:with-param name="selected" select="concat(../@Taken, @Taken) = 'Dst'"/>
        <!-- for arrays, @Taken would have value, while for per layer ../@Taken -->
      </xsl:call-template>
      <xsl:call-template name="__THeadCell">
        <xsl:with-param name="name">__col2</xsl:with-param>
        <xsl:with-param name="selected" select="concat(../@Taken, @Taken) = 'Src'"/>
      </xsl:call-template>
      <xsl:if test="count(./Value/Base)>0">
        <xsl:call-template name="__THeadCell">
          <xsl:with-param name="name">__col3</xsl:with-param>
        </xsl:call-template>
      </xsl:if>
    </thead>
  </xsl:template>
  <xsl:template name="__THeadCell">
    <xsl:param name="name"/>
    <xsl:param name="selected"/>
    <xsl:element name="td">
      <xsl:if test="$selected and count(/ConstraintDifferenceReport[@NoStatusClmn='1'])=0">
        <xsl:attribute name="class">selected</xsl:attribute>
      </xsl:if>
      <xsl:choose>
        <xsl:when test="$name = '__col1'">
          <xsl:attribute name="title">
            <xsl:value-of select="/ConstraintDifferenceReport/RptSummary/Entry[@Name = /ConstraintDifferenceReport/RptSummary/@Col1]"/>
          </xsl:attribute>
          <xsl:value-of select="/ConstraintDifferenceReport/RptSummary/@Col1"/>
        </xsl:when>
        <xsl:when test="$name = '__col2'">
          <xsl:attribute name="title">
            <xsl:value-of select="/ConstraintDifferenceReport/RptSummary/Entry[@Name = /ConstraintDifferenceReport/RptSummary/@Col2]"/>
          </xsl:attribute>
          <xsl:value-of select="/ConstraintDifferenceReport/RptSummary/@Col2"/>
        </xsl:when>
        <xsl:when test="$name = '__col3'">
          <xsl:attribute name="title">
            <xsl:value-of select="/ConstraintDifferenceReport/RptSummary/Entry[@Name = 'Baseline File']"/>
          </xsl:attribute>
          <xsl:text>Base</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$name"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  <xsl:template name="__objName">
    <xsl:param name="ObjName">
      <xsl:value-of select="@Name"/>
    </xsl:param>
    <xsl:choose>
      <xsl:when test="@Ref">
        <xsl:element name="a">
          <xsl:attribute name="href">
            <xsl:text>#</xsl:text>
            <xsl:value-of select="@Ref"/>
          </xsl:attribute>
          <xsl:value-of select="$ObjName"/>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$ObjName"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="__groupSummaryTable">
    <table>
      <xsl:call-template name="__groupSummaryTableHeader"/>
      <tbody>
        <xsl:apply-templates select="ChangedObject"></xsl:apply-templates>
      </tbody>
    </table>
  </xsl:template>
  <xsl:template name="__attributeTable">
    <xsl:param name="FirstCell"/>
    <xsl:param name="Flattened">0</xsl:param>
    <xsl:variable name="NeedParent" select="count(Attribute[count(@Flattened)=$Flattened and count(@PName) > 0])"/>
    <table>
      <thead>
        <td>
          <xsl:value-of select="$FirstCell"/>
        </td>
        <xsl:if test="$NeedParent > 0">
          <td>Parent</td>
        </xsl:if>
        <xsl:call-template name="__THeadCell">
          <xsl:with-param name="name">__col1</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="__THeadCell">
          <xsl:with-param name="name">__col2</xsl:with-param>
        </xsl:call-template>
        <xsl:if test="count(./Attribute/Value/Base)>0">
          <xsl:call-template name="__THeadCell">
            <xsl:with-param name="name">__col3</xsl:with-param>
          </xsl:call-template>
        </xsl:if>
        <xsl:if test="count(/ConstraintDifferenceReport[@NoStatusClmn='1'])=0">
          <td>Status</td>
        </xsl:if>
      </thead>
      <tbody>
        <xsl:apply-templates select="Attribute[count(@Flattened)=$Flattened]">
          <xsl:sort select="@PName"/>
          <xsl:sort select="@Name"/>
          <xsl:with-param name="NeedParent">
            <xsl:value-of select="$NeedParent"/>
          </xsl:with-param>
          <xsl:with-param name="threecols">
            <xsl:if test="count(./Attribute/Value/Base)>0">true</xsl:if>
          </xsl:with-param>
        </xsl:apply-templates>
      </tbody>
    </table>
  </xsl:template>
  <xsl:template name="__status">
    <xsl:choose>
      <xsl:when test="count(@Status)>0 and @Status!=''">
        <xsl:attribute name="class">
          <xsl:value-of select="@Status"/>
        </xsl:attribute>
        <xsl:value-of select="@Status"/>
      </xsl:when>
      <xsl:otherwise>Change</xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="_i_Attributes">
    <div filter="{@Filter}">
      <xsl:if test="count(./Attribute[count(@Flattened)=0]) > 0">
        <h3>
          <xsl:choose>
            <xsl:when test="name(..) = 'MainSummary'">Analysis mode changes:</xsl:when>
            <!-- Attribute table title now reflects the type of difference -->
            <xsl:when test="./Attribute/@Status='Pending'">Attribute differences:</xsl:when>
            <xsl:when test="./Attribute/@Status='Conflict'">Attribute conflicts:</xsl:when>
            <xsl:otherwise>Directly-set attribute changes:</xsl:otherwise>
          </xsl:choose>
        </h3>
        <xsl:if test="./Attribute[@Type != 'Scalar']">
          <xsl:call-template name="_e_ViewSelector">
            <xsl:with-param name="global">true</xsl:with-param>
          </xsl:call-template>
        </xsl:if>
        <xsl:call-template name="__attributeTable">
          <xsl:with-param name="FirstCell">Attribute name</xsl:with-param>
        </xsl:call-template>
      </xsl:if>
      <xsl:if test="count(./Attribute[@Flattened='1']) > 0">
        <h3>Attribute changes as a result of CSet apply:</h3>
        <xsl:call-template name="__attributeTable">
          <xsl:with-param name="Flattened">1</xsl:with-param>
          <xsl:with-param name="FirstCell">Attribute name</xsl:with-param>
        </xsl:call-template>
      </xsl:if>
    </div>
  </xsl:template>
  <xsl:template name="_i_Notes">
    <xsl:call-template name="_i_SummaryNotesHeader"/>
    <ul class="notes">
      <xsl:apply-templates select="./Note"/>
    </ul>
  </xsl:template>
</xsl:stylesheet>
