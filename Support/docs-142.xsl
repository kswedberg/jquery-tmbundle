<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/*">
<xsl:if test="count(//entry) = 0">
<h2>Sorry, that doesn't appear to be a jQuery method.</h2>
</xsl:if>
<xsl:if test="count(//entry)">
<html>
<head>
	<title>jQuery API</title>
	<style>
body {
  font: normal 62.5% "Trebuchet MS", Verdana, Helvetica, Arial,sans-serif;
  line-height: 1.4;
  margin: 0px;
  padding: 0px;
}

h1 {
  padding: 2px 10px;
  border-bottom: 1px solid #ccc;
}
ul, ol {
  list-style-type: none;
}
#jq-primaryContent {
position: relative;
width: 632px;
margin: 0 auto;
color: #222;
min-height: 500px;
overflow: visible;
}

.jq-box{
padding: 5px 20px 20px 20px;
background: #fafafa;
border: 1px solid #aaa;
}

h1.jq-box{
padding: 5px 20px 0px 20px;
background: #fafafa;
border-bottom: 0px;
}

.round{
-moz-border-radius: 8px;
-webkit-border-radius: 8px;
border-radius: 8px;
}
.roundTop{
-moz-border-radius-topleft:         6px;
-moz-border-radius-topright:        6px;
-webkit-border-top-left-radius:     6px;
-webkit-border-top-right-radius:    6px;
border-radius-topleft:              6px;
border-radius-topright:             6px;
}                                   
.roundBottom{
-moz-border-radius-bottomleft:      6px;
-moz-border-radius-bottomright:     6px;
-webkit-border-bottom-left-radius:  6px;
-webkit-border-bottom-right-radius: 6px;
border-radius-bottomleft:           6px;
border-radius-bottomright:          6px;
border-top: none;
}

#jq-primaryContent code {
font-size: 13px;
}
#jq-primaryContent h2 code {
font-size: 1.3em;
}
#jq-primaryContent li {
font-size: 1.1em;
margin: .5em 0;
}
#jq-primaryContent p{
font-size: 1.2em;
margin: .5em 0;
}
#jq-primaryContent a, #jq-primaryContent a:visited {
color: #0F67A1;
text-decoration: underline;
}
#jq-primaryContent a:hover, #jq-primaryContent a:visited {
color: #176092;
text-decoration: underline;
}
#jq-primaryContent a img {
border: 0;
}

#jq-primaryContent h1 {
font-size: 1.9em;
font-weight: bold;
color: #222;
margin: .5em 0 0;
border-bottom: 1px solid #bbb;
padding-bottom: .4em;
}
#jq-primaryContent h2 {
font-size: 1.5em;
color: #333;
font-weight: bold;
margin: 1em 0 .6em;
}
#jq-primaryContent h2 a {
text-decoration: none;
}
#jq-primaryContent h2 a:hover {
text-decoration: underline;
}
#ticket h2 {
font-size: 1.3em;
}
#jq-primaryContent small {
font-size: 11px;
color: #666;
margin: 1.6em 0 1em;
}
#jq-primaryContent h3 {
font-size: 1.9em;
margin: 1em 0 .6em;
color: #333;
font-weight: bold;
}
#jq-primaryContent h4 {
font-size: 1.2em;
margin: 1em 0 .6em;
color: #444;
font-weight: bold;
}

#jq-primaryContent h5 {
font-size: 1.1em;
margin: 1em 0 .6em;
font-weight: bold;
color: #666;
}

.jq-clearfix:after { content: "."; display:block; height:0; clear:both; visibility:hidden; }
.jq-clearfix { display:inline-block; }		
/* hides clearfix from IE-mac \*/
* html .jq-clearfix { height:1%; }
.jq-clearfix { display:block; }
/* end hide from IE-mac */

.api-jquery-com .entry-content .entry-title{
padding: 5px 10px 5px 10px;
background: #fafafa;
border-right: 1px solid #aaa;
border-left: 1px solid #aaa;
border-top: 1px solid #aaa;
}
.api-jquery-com fieldset.toc{
padding: 5px 20px 20px 20px;
background: #fafafa;
border-right: 1px solid #aaa;
border-left: 1px solid #aaa;
border-bottom: 1px solid #aaa;
margin: 1em 0 0 0;
}
#jq-primaryContent fieldset.toc legend{
font-size:1.4em;
padding:0px;
background: #fff;
border: none;
}
.api-jquery-com fieldset.toc ul.toc-list li a{
line-height: 1.1;
background: url(images/down-arrow.png) no-repeat 0px 5px;
padding: 0 0 0 13px; 
}
.api-jquery-com fieldset.toc ul.toc-list ul li a{
background: url(images/down-arrow.png) no-repeat 0px 3px;
}
.api-jquery-com #jq-primaryContent p.image {
margin: 1em 1.61803399em; /*Thanks fibinocci!*/
padding: 2em 0;
text-align: center;
background: #fff;
border: 2px solid #E2E1D5;
}
.api-jquery-com #jq-primaryContent p.image img {
vertical-align: top;  
}
.api-jquery-com #jq-primaryContent .four-across img {
width: 120px;
}

.api-jquery-com #jq-primaryContent fieldset.toc ul.toc-list a{
font-size: 1.4em;
color: #444444;
text-decoration: none;
}
.api-jquery-com #jq-primaryContent fieldset.toc ul.toc-list a span.desc{
font-size: .8em;
font-style: italic;
}
.api-jquery-com #jq-primaryContent fieldset.toc ul.toc-list li ul li a{
font-size: 1em;
}

.api-jquery-com fieldset.toc ul.toc-list ul{
margin-left: 2em;
}
.api-jquery-com #jq-primaryContent fieldset.toc ul.toc-list ul li{
font-size: .9em;
margin-top: 3px;
margin-bottom: 3px;
}

.api-jquery-com .entry .longdesc{
padding: 0 20px
}

.api-jquery-com .entry h2 span.desc{
text-transform: none;
font-size: .9em;
font-style: italic;
font-weight: normal;
}
.api-jquery-com #jq-primaryContent .section-title{
  border: none;
  background: #0D5995;
  color: #fff;
  padding: 6px 20px;
  margin: 1em 0 0 0;
  font-size: 1.7em;
}
.api-jquery-com #jq-interiorNavigation .section-title{
  border: none;
  background: #0D5995;
  color: #fff;
  padding: 6px 20px;
  font-size: 1.4em;
  margin: 0;
}
#jq-interiorNavigation .roundBottom{
  margin: 0 0 1em 0;
}
.api-jquery-com #jq-primaryContent h1.section-title{
  font-size:2em
}
.api-jquery-com #jq-primaryContent .section-title a {
  color: #fff;
  text-decoration: underline;
}
.api-jquery-com #jq-primaryContent .entry h3{
  margin: 0.5em 0 0 0;
}
.api-jquery-com #jq-interiorNavigation ul li ul.children{
  margin-left: 15px;
}
.api-jquery-com #jq-interiorNavigation span.plus {
  display: block;
  float: left;
  width: 15px;
  text-align: center;
  margin-left: -10px;
}
.api-jquery-com #jq-interiorNavigation #categories a:focus {
  outline: none
}
.api-jquery-com code{
  background-color: #eee;
}
.api-jquery-com #jq-primaryContent pre code{
  background: none;
  font-size: 1.3em;
}
.api-jquery-com #jq-primaryContent h1 {
  font-size: 3.2em ;
  margin: 0;
  padding: 0 10px .1em 10px;
}
.api-jquery-com #jq-interiorNavigation h1 {
  font-size: 2em ;
  margin: 0 0 6px 0;
  padding: 0 0 0px 0;
  border-bottom: 1px solid #BBBBBB;

}

.api-jquery-com #jq-primaryContent h1.category-title {
  -webkit-border-radius-topleft: 4px;
  -webkit-border-radius-topright: 4px;
  -moz-border-radius-topleft: 4px;
  -moz-border-radius-topright: 4px;
  border-radius-topleft: 4px;
  border-radius-topright: 4px;
  background:#bbb;
  border-bottom: 1px solid #666;
  color:#333;
  left:-16px;
  padding-left:15px;
  padding-right:15px;
  position:relative;
  top:-6px;
  width:591px;
}
.api-jquery-com #jq-primaryContent #method-list li a.title-link{
  padding: 0px;
}

.api-jquery-com #jq-primaryContent #method-list li {
  padding: 10px;
  border-bottom: 1px solid #EEEEEE;
}
.api-jquery-com #jq-primaryContent #method-list li li{
  border-bottom: none;
}
li.withfocus{
  background: none !important;
  -webkit-border-radius: 3px;
  -moz-border-radius:    3px;
  border-radius:         3px;
  border-color: #fff !important;
  -webkit-box-shadow: 0px 0px 6px #6fa1d9;
  -moz-box-shadow:    0px 0px 6px #6fa1d9;
  box-shadow:         0px 0px 6px #6fa1d9;
}
li.withoutfocus{background: none}
.api-jquery-com #jq-primaryContent #method-list li h2{
  display: inline;
  margin: 0
}

.api-jquery-com #jq-primaryContent li span.entry-meta {
  background:#EEEEEE none repeat scroll 0 0;
  float:right;
  font-size:1em;
  margin:-27px -4px 0 0;
  padding:4px;
}


.api-jquery-com #jq-primaryContent #method-list li p{
  padding: 0;
  margin: 0;
  font-size: 1em;
  clear: both;
  font-style: italic;
}


.api-jquery-com #jq-primaryContent div.entry-meta{
  text-align: right;
  margin: 5px;
  font-size: 1.2em;
}

#jq-interiorNavigation h2 a, #jq-interiorNavigation h2 a:hover{
  background: transparent;
  border: none;
  color: #fff;
  padding: 0px;
  font-size: inherit;
  line-height: inherit
}
#jq-primaryContent h2 a.title-link {
  display: block
}

.api-jquery-com #jq-primaryContent .entry-details p.desc strong{
  color: #333
}
.api-jquery-com #jq-primaryContent .entry-details p.desc{
  color:#777;
  font-family:"myriad pro";
  font-size:17px;
  font-style:italic;
}
.api-jquery-com #jq-primaryContent span.returns{
  font-style: italic;
  float: right
}
.api-jquery-com #jq-primaryContent span.returns a{
  color: #fff;
}

.api-jquery-com #jq-primaryContent h4.name {
  font-size:1.4em;
  border-bottom: 1px solid #b1b1b1;
  padding: 0 0 2px 0;
}
.api-jquery-com #jq-primaryContent ol {
  list-style-type: decimal;
  padding-left: 2em;
  font-size: 1.2em;
}

.api-jquery-com #jq-primaryContent ul.signatures {
  margin: 1em 19px 1.5em 19px;
  background: #eee;
  padding: 10px
}

.api-jquery-com #jq-primaryContent ul.signatures p.arguement strong {
  margin-right: 5px
}

.api-jquery-com #jq-primaryContent h5 {
  font-size: 1.4em;
  line-height: 1;
  margin: 0;
}
.api-jquery-com #jq-primaryContent div.longdesc {
  margin: 0 0 3em 0;
}
.api-jquery-com #jq-primaryContent div.longdesc p{
  font-size:1.2em;
  line-height:1.7em;
  margin: 1em 0;
  padding: 0 1px;
}

.api-jquery-com #jq-primaryContent div.longdesc ul {
  /*  margin: 0 3em;*/
  font-size: 1.2em;
  padding-left: 1.3em;
  list-style: disc outside none;
}
.api-jquery-com #jq-primaryContent div.longdesc ul li {
  font-size: 1em;
}
.api-jquery-com #jq-primaryContent div.longdesc h4 {
  color:#555;
  font-size:1.8em;
  font-style:italic;
  font-weight:normal;
  margin:1.5em 0 0;
}
.api-jquery-com #jq-primaryContent div.longdesc h4 a.stub {
  font-size: .8em;
  padding-right: .4em;
  text-decoration: none;
}
.api-jquery-com #jq-primaryContent div.entry-examples h4{
  color:#555;
  font-size:1.8em;
  font-style:italic;
  font-weight:normal;
  margin:.2em 0;
}
.api-jquery-com #jq-primaryContent div.entry-examples h4 span.desc{
  font-size: .7em;
}

.api-jquery-com #jq-primaryContent div.entry-examples pre {
  margin-bottom: 1em
}
.api-jquery-com #jq-primaryContent div.entry-examples .demo{
  margin-bottom: 3em;
}

.api-jquery-com #jq-primaryContent li.signature {
  margin: 0 0 1.5em 0;
}

.api-jquery-com #jq-primaryContent .signatures h4 {
  margin: .2em 0 0 0;
}
.api-jquery-com #jq-primaryContent .argument h4 {
  font-size: 1.1em;
  margin: 3em 0 0 0;
}
.api-jquery-com #jq-primaryContent .signature ol{
  color: #808080
}

.api-jquery-com #jq-primaryContent .signature ol.arguments li.argument h4, .api-jquery-com #jq-primaryContent .signature ol.arguments li.argument p{
  display: inline;
}
ul.categories{
  margin: 0 0 4em 0;
}

.api-jquery-com #jq-content pre {
  padding: 10px;
  overflow-x: auto;
  background-color: #fbf9ea;
  border: 1px solid #e2e1d5;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  border-radius: 2px;
  margin: 0px
}

.demo {
  padding: 5px;
  background-color: #e3e4e5;
  border: 1px solid #e2e1d5;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  border-radius: 2px;
}


#access{display: none;}

.api-jquery-com .versionAdded {
  float: right;
  font-size: .75em;
}

.api-jquery-com span.output {
  color: #090;
  font-weight: bold;
}
.api-jquery-com #jq-content blockquote {
  margin: 1em 1.5em;
  padding: 5px;
  border: 1px solid #e2e1d5;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  border-radius: 2px;
}

.api-jquery-com #jq-content table {
  font-size: 1.1em;
  margin-bottom: 1em;
}
.api-jquery-com #jq-content th {
  text-align: left;
}
.api-jquery-com #jq-content th,
.api-jquery-com #jq-content td {
  padding: 3px 6px;
}
.api-jquery-com #jq-primaryContent .options {
  padding: 4px 0 0 10px;
}
.api-jquery-com #jq-primaryContent .options h5 {
  font-size: 1.3em;
  color: #222;
  border-top: 1px solid #ddd;
  padding-top: 10px;
  margin-top: 10px;
}
.api-jquery-com #jq-primaryContent .default-value strong {
  color: #666;
}
.api-jquery-com #jq-primaryContent .options h5 span {
  float: right;
  color: #666;
  font-size: 0.8em;
}
.api-jquery-com #jq-primaryContent .options p {
  font-size: 1.1em;
}

	</style>
</head>
<body class="api-jquery-com single">
  
  <div id="jq-content">
    <div id="jq-primaryContent">
      <xsl:if test="count(//entry) &gt; 1">
      <fieldset class="toc">
        <legend>Contents:</legend>
        <ul class="toc-list">
        	<xsl:for-each select="//entry">
        		<xsl:variable name="entry-name" select="@name" />
        		<li>
        			<a href="#{concat(@name,position())}">
      				<xsl:value-of select="@name" /><xsl:if test="@type='method'">(<xsl:if test="signature/argument"><xsl:text> </xsl:text>
      					<xsl:for-each select="signature[1]/argument">
      						<xsl:if test="position() &gt; 1">
      							<xsl:text>, </xsl:text>
      						</xsl:if>
      						<xsl:if test="@optional">[<xsl:text>&#160;</xsl:text></xsl:if>
      	  						<xsl:value-of select="@name" />
      						<xsl:if test="@optional"><xsl:text>&#160;</xsl:text>]</xsl:if>
      	  				</xsl:for-each>
      				<xsl:text>&#160;</xsl:text></xsl:if>)</xsl:if>
        				<xsl:text> </xsl:text>
        			</a>

      			<xsl:if test="@type='method'">
      	  			<ul>
      	  				<xsl:for-each select="signature">
      	  					<li>
      	  							<xsl:if test="not(contains($entry-name, '.')) and $entry-name != 'jQuery'">.</xsl:if><xsl:value-of select="$entry-name" />(<xsl:if test="argument"><xsl:text> </xsl:text>
      	  								<xsl:for-each select="argument">
      	  									<xsl:if test="position() &gt; 1">
      	  										<xsl:text>, </xsl:text>
      	  									</xsl:if>
      										<xsl:if test="@optional">[ </xsl:if>
      	  									<xsl:value-of select="@name" />
      										<xsl:if test="@optional"> ]</xsl:if>
      	  								</xsl:for-each><xsl:text> </xsl:text></xsl:if>)
      	  					</li>
      	  				</xsl:for-each>
      	  			</ul>
      			</xsl:if>
        		</li>
        	</xsl:for-each>
        </ul>
      </fieldset>
      </xsl:if>

  	<xsl:for-each select="//entry">
    <xsl:variable name="entry-name" select="@name" />
    <xsl:variable name="entry-type" select="@type" />
    <xsl:variable name="entry-index" select="position()" />
    <xsl:variable name="number-examples" select="count(example)" />
    <div class="entry {@type}" id="{concat(@name,position())}">
    	<h2 class="jq-clearfix roundTop section-title">
    		<span class="name">
              <xsl:choose>
                <xsl:when test="$entry-type='method'"><xsl:if test="not(contains($entry-name, '.')) and $entry-name != 'jQuery'">.</xsl:if></xsl:when>
              </xsl:choose>
              <xsl:value-of select="@name" /><xsl:if test="@type='method'">(<xsl:if test="signature/argument"><xsl:text> </xsl:text>
    					<xsl:for-each select="signature[1]/argument">
    						<xsl:if test="position() &gt; 1">
    							<xsl:text>, </xsl:text>
    						</xsl:if>
    						<xsl:if test="@optional">[ </xsl:if>
    	  						<xsl:value-of select="@name" />
    						<xsl:if test="@optional"> ]</xsl:if>
    	  				</xsl:for-each>
    				<xsl:text> </xsl:text></xsl:if>)</xsl:if></span>
    		<xsl:text> </xsl:text>

        <xsl:choose>
          <xsl:when test="$entry-type='selector'">
            <xsl:text> selector</xsl:text>
      	  </xsl:when>
          <xsl:otherwise>

         	<span class="returns">
         		<xsl:if test="@return != ''">Returns: <a class="return" href="http://docs.jquery.com/Types#{@return}"><xsl:value-of select="@return" /></a></xsl:if>
         	</span>
          </xsl:otherwise>
        </xsl:choose>
    	</h2>
      <div class="jq-box roundBottom entry-details">
        <xsl:choose>
          <xsl:when test="$entry-type='selector'">
            <xsl:if test="./sample">
              <h4 class="name">
                <span class="versionAdded">version added: <xsl:value-of select="signature/added" /></span>
                <xsl:text>jQuery('</xsl:text><xsl:value-of select="sample" /><xsl:text>')</xsl:text>
              </h4>
            </xsl:if>
            <xsl:if test="signature/argument">
              <ul class="signatures">
                <li>
          				<dl class="arguments">
          					<xsl:for-each select="signature/argument">
        						<dt><xsl:value-of select="@name" /></dt>
        							<dd><xsl:copy-of select="desc/text()|desc/*" /></dd>
          					</xsl:for-each>
          				</dl>
      				  </li>
              </ul>
    			  </xsl:if>
            <p class="desc"><strong>Description: </strong> <xsl:value-of select="desc" /></p>
      	  </xsl:when>
          <xsl:otherwise>

        	<p class="desc"><strong>Description: </strong> <xsl:value-of select="desc" /></p>
          	<ul class="signatures">
          		<xsl:for-each select="signature">
          			<li class="signature">
          				<xsl:attribute name="id">
          					<xsl:value-of select="$entry-name" />
          					<xsl:for-each select="argument">
          						<xsl:text>-</xsl:text><xsl:value-of select="translate(@name, ')(', '')"/>
          					</xsl:for-each>
          				</xsl:attribute>
          				<h4 class="name">
                    <span class="versionAdded">version added: <xsl:value-of select="added" /></span>
          					<xsl:if test="$entry-type='method'"><xsl:if test="not(contains($entry-name, '.')) and $entry-name != 'jQuery'">.</xsl:if></xsl:if><xsl:value-of select="$entry-name" /><xsl:if test="$entry-type='method'">(<xsl:if test="argument"><xsl:text> </xsl:text>
          						<xsl:for-each select="argument">
          							<xsl:if test="position() &gt; 1">
          								<xsl:text>, </xsl:text>
          							</xsl:if>
          							<xsl:if test="@optional">[ </xsl:if>
            								<xsl:value-of select="@name" />
          							<xsl:if test="@optional"> ]</xsl:if>
          						</xsl:for-each>
          					<xsl:text> </xsl:text></xsl:if>)</xsl:if>
          				</h4>
        				  <xsl:if test="argument">
        	  					<xsl:for-each select="argument">
        							<p class="arguement"><strong><xsl:value-of select="@name" /> </strong> <xsl:copy-of select="desc/text()|desc/*" /></p>
        	  					</xsl:for-each>
        				  </xsl:if>
    							<xsl:if test="option">
    								<div class="options">
    		      				<xsl:for-each select="option">
    	  							<h5 class="option">
    										<xsl:value-of select="@name" /> 
    										<span>
    											<a href="http://docs.jquery.com/Types#{@type}"><xsl:value-of select="@type" /></a>
    										</span>
    									</h5> 
    									<xsl:if test="@default">
    										<div class="default-value"><strong>Default: </strong> <xsl:value-of select="@default" /></div>
    									</xsl:if>
    									<p>
    										<xsl:copy-of select="desc/text()|desc/*" />
    									</p>
    	  	  					</xsl:for-each>
    								</div>
    	      			</xsl:if>
          			</li>

    					</xsl:for-each>
          	</ul>

          </xsl:otherwise>
        </xsl:choose>
        <xsl:if test="normalize-space(longdesc/*)">
        	<div class="longdesc">
        		<xsl:copy-of select="longdesc/*" />
        	</div>
        </xsl:if>
      	<xsl:if test="$number-examples &gt; 0">
       		<h3>Example<xsl:if test="$number-examples &gt; 1">s</xsl:if>:</h3>
          <div id="entry-examples" class="entry-examples">
        	<xsl:for-each select="example">
        	  <div>
        	    <xsl:attribute name="id">
        	      <xsl:text>example-</xsl:text><xsl:value-of select="position() - 1"/> 
        	    </xsl:attribute>
          		<h4><xsl:if test="$number-examples &gt; 1">Example: </xsl:if><span class="desc"><xsl:value-of select="desc" /></span></h4>
      <pre><code><xsl:choose>
      	    		<xsl:when test="html"><xsl:attribute name="class">example demo-code</xsl:attribute>&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;<xsl:if test="css/text()">
  &lt;style&gt;<xsl:copy-of select="css/text()" />&lt;/style&gt;</xsl:if>
&lt;script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.js"&gt;&lt;/script&gt;<xsl:if test="code/@location='head'">
  &lt;script&gt;
  <xsl:copy-of select="code/text()" />
  &lt;/script&gt;
</xsl:if>
&lt;/head&gt;
&lt;body&gt;
   	<xsl:copy-of select="html/text()" />
    <xsl:choose>
    	<xsl:when test="code/@location='head'"></xsl:when>
    	<xsl:otherwise>
  &lt;script&gt;<xsl:copy-of select="code/text()" />&lt;/script&gt;</xsl:otherwise>
    </xsl:choose>
&lt;/body&gt;
&lt;/html&gt;</xsl:when>
          		<xsl:otherwise>
    						<xsl:attribute name="class">example</xsl:attribute>
    						<xsl:copy-of select="code/text()" />
    					</xsl:otherwise>
        		</xsl:choose></code></pre>
      			<xsl:if test="results">
      			  <h4>Result:</h4>
      			  <pre>
      			    <code class="results">
                  <xsl:value-of select="results"/>
                </code>
      			  </pre>
      			</xsl:if>
      			</div>
    	    </xsl:for-each>
          </div>
        </xsl:if>
      </div>
    </div>

    </xsl:for-each>
    </div>
  </div>
</body>
</html>
</xsl:if>
</xsl:template>

</xsl:stylesheet>