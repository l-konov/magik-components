// This script must be included in any template that will use on-the-fly parsing with the MSXSL library
// 
function parseXML(xml_file, xsl_file) {
	var xml = new ActiveXObject("Microsoft.XMLDOM");
	xml.async = false;
	xml.load(xml_file);
	// Load XSL
	var xsl = new ActiveXObject("Microsoft.XMLDOM");
	xsl.async = false;
	xsl.load(xsl_file);
	// Transform
	document.write(xml.transformNode(xsl));
}

function parseTaggedXML(xml_file, xsl_file, tag) {
	// Test
	var xslt = new ActiveXObject("Msxml2.XSLTemplate");
	var xslDoc = new ActiveXObject("Msxml2.FreeThreadedDOMDocument");
	var xslProc;
	xslDoc.async = false;
	xslDoc.load(xsl_file);
	xslt.stylesheet = xslDoc;
	var xmlDoc = new ActiveXObject("Msxml2.DOMDocument");
	xmlDoc.async = false;
	xmlDoc.load(xml_file);
	xslProc = xslt.createProcessor();
	xslProc.input = xmlDoc;
	xslProc.addParameter("identifier", tag);
	xslProc.transform();
	document.write(	xslProc.output);
}
