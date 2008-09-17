<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/*">
<html>
<head>
	<title>jQuery Docs - API</title>
	<style>
html, body {
	background: #212121;
	font-family: Arial;
	font-size: 14px;
	text-align: center;
}

h1 {
	margin: 15px auto;
	text-align: left;
	width: 600px;
	color: #FFF;
}

ul#docs {
	list-style: none;
	margin: 0 auto;
	padding: 5px;
	width: 600px;
	background: #FFF;
	text-align: left;
}

ul#docs li {
	margin: 5px 0;
}

ul#docs li span.tooltip {
	border-bottom: 1px dashed #666;
}

ul#docs li span.name {
	font-weight: bold;
	text-decoration: none;
}

ul#docs li span.type {
	display: block;
	float: left;
	color: #666;
	width: 100px;
	margin-right: 10px;
	font-size: 12px;
	line-height: 18px;
	font-family: Courier;
	text-align: right;
}

ul#docs li span.arg-type {
	color: #666;
}

ul#docs li div.short {
	font-size: 12px;
	color: #666;
	margin-left: 110px;
	margin-top: 5px;
}

ul#docs span.fn {
	font-family: Courier;
}

ul#docs div.tooltipdemo {
	font-size: 12px;
	font-family: Arial;
}

ul#docs li div.more {
	margin-left: 110px;
	margin-top: 5px;
}

ul#docs li div.example {
	overflow: auto;
}

ul#docs li div.example h5 {
	font-size: 16px;
}

ul#docs li div.example pre {
	color: #4F4;
	background: #000;
	padding: 5px;
	overflow: auto;
}

	</style>
</head>
<body>
	<h1>jQuery Docs - API</h1>
	<ul id="docs">
		<xsl:for-each select="method[not(@private)]">
			<xsl:sort select="@name"/>
			<xsl:sort select="count(params)"/>
			<li>
				<span class="type"><span class="tooltip"><xsl:value-of select="@type"/></span></span>
				<span class="fn">
					<span href="#{@name}" class="name" title=""><xsl:value-of select="@name"/></span>
						<xsl:if test="not(@property)">(
							<xsl:for-each select="params">
								<span class="arg-type tooltip"><xsl:value-of select="@type"/></span><xsl:text> </xsl:text>
								<span class="arg-name tooltip" title="{desc}"><xsl:value-of select="@name"/></span>
								<xsl:if test="position() != last()">
									<xsl:if test="@any"> or </xsl:if>
									<xsl:if test="not(@any)">, </xsl:if>
								</xsl:if>
							</xsl:for-each>
						 )</xsl:if>
				</span>
				<div class="short">
					<xsl:value-of select="@short"/>
				</div>
				<div class="more">
					<div class="desc">
						<xsl:value-of select="desc"/>
					</div>
					<xsl:for-each select="examples">
						<div class="example">
							<h5>Example:</h5>
							<xsl:if test="desc">
								<p><xsl:value-of select="desc"/></p>
							</xsl:if>
							<pre><xsl:value-of select="code"/></pre>
							<xsl:if test="before">
								<b>HTML:</b>
								<pre><xsl:value-of select="before"/></pre>
							</xsl:if>
							<xsl:if test="result">
								<b>Result:</b>
								<pre><xsl:value-of select="result"/></pre>
							</xsl:if>
						</div>
					</xsl:for-each>
				</div>
			</li>
		</xsl:for-each>
	</ul>
</body>
</html>
</xsl:template>

</xsl:stylesheet>