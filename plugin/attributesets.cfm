<!---

This file is part of MuraGoogleMaps TM
(c) Stephen J. Withington, Jr. | www.stephenwithington.com

CAREFULLY READ THE ENCLOSED LICENSE AGREEMENT (plugin/license.htm). BY USING THIS SOFTWARE, YOU ARE CONSENTING TO BE BOUND BY AND ARE BECOMING A PARTY TO THIS AGREEMENT. IF YOU DO NOT AGREE TO ALL OF THE TERMS OF THIS AGREEMENT, THEN DO NOT USE THIS SOFTWARE, AND, IF APPLICABLE, RETURN THIS PRODUCT TO THE PLACE OF PURCHASE FOR A FULL REFUND.

Valid Types:
	TextBox
	TextArea
	HTMLEditor
	SelectBox
	MultiSelectBox
	RadioGroup
	File
	Hidden

--->
<cfscript>
// time to create the attribute sets
if ( isDefined('local') and structKeyExists(local, 'rsSites') and structKeyExists(local.rsSites, 'siteid') and structKeyExists(local, 'parentType') ) {
	// mapFile
	upsertAttributeSet(
		siteID=local.rsSites.siteid
		,name='mapFile'
		,label='CSV or XML File'
		,hint='The properly formatted .CSV or .XML file.'
		,type='File'
		,defaultValue=''
		,required=false
		,validate='None'
		,regex=''
		,message=''
		,optionList=''
		,optionLableList=''
		,parentType=local.parentType
		,orderNo=1
	);

	// XmlUrl
	upsertAttributeSet(
		siteID=local.rsSites.siteid
		,name='mapURL'
		,label='The URL of a properly formatted XML or CSV file'
		,hint='The URL of a properly formatted XML or CSV file (if not uploading a CSV or XML file)'
		,type='TextBox'
		,defaultValue=''
		,required=false
		,validate='None'
		,regex=''
		,message=''
		,optionList=''
		,optionLableList=''
		,parentType=local.parentType
		,orderNo=2
	);

	// mapType
	upsertAttributeSet(
		siteID=local.rsSites.siteid
		,name='mapType'
		,label='Default Map Type'
		,hint='The default Map Type.'
		,type='SelectBox'
		,defaultValue='TERRAIN'
		,required=false
		,validate='None'
		,regex=''
		,message=''
		,optionList='ROADMAP^SATELLITE^HYBRID^TERRAIN'
		,optionLabelList='Roadmap^Satellite^Hybrid^Terrain'
		,parentType=local.parentType
		,orderNo=3
	);

	// displayDirections
	upsertAttributeSet(
		siteID=local.rsSites.siteid
		,name='displayDirections'
		,label='Display Directions'
		,hint='Should users be able to see directions to the location(s)?'
		,type='RadioGroup'
		,defaultValue='true'
		,required=false
		,validate='None'
		,regex=''
		,message=''
		,optionList='false^true'
		,optionLabelList='No^Yes'
		,parentType=local.parentType
		,orderNo=4
	);

	// displayTravelMode
	upsertAttributeSet(
		siteID=local.rsSites.siteid
		,name='displayTravelMode'
		,label='Display Travel Mode Options'
		,hint='Should the various travel mode options be displayed when showing directions (i.e., Driving, Walking or Bicycling)?'
		,type='RadioGroup'
		,defaultValue='true'
		,required=false
		,validate='None'
		,regex=''
		,message=''
		,optionList='false^true'
		,optionLabelList='No^Yes'
		,parentType=local.parentType
		,orderNo=5
	);

	// start
	upsertAttributeSet(
		siteID=local.rsSites.siteid
		,name='start'
		,label='Default Start/From Location'
		,hint='The default start/from address location if showing directions.'
		,type='TextBox'
		,defaultValue='Lebanon, KS'
		,required=false
		,validate='None'
		,regex=''
		,message=''
		,optionList=''
		,optionLabelList=''
		,parentType=local.parentType
		,orderNo=6
	);

	// mapWidth
	upsertAttributeSet(
		siteID=local.rsSites.siteid
		,name='mapWidth'
		,label='Map Width'
		,hint='Map width in pixels.'
		,type='TextBox'
		,defaultValue='600'
		,required=false
		,validate='None'
		,regex=''
		,message=''
		,optionList=''
		,optionLabelList=''
		,parentType=local.parentType
		,orderNo=7
	);

	// mapHeight
	upsertAttributeSet(
		siteID=local.rsSites.siteid
		,name='mapHeight'
		,label='Map Height'
		,hint='Map height in pixels.'
		,type='TextBox'
		,defaultValue='400'
		,required=false
		,validate='None'
		,regex=''
		,message=''
		,optionList=''
		,optionLabelList=''
		,parentType=local.parentType
		,orderNo=8
	);

	// mapZoom (0 = fully zoomed out // 18 = fully zoomed in)
	upsertAttributeSet(
		siteID=local.rsSites.siteid
		,name='mapZoom'
		,label='Default Zoom'
		,hint='You can override the default behaviour of auto-fit all locations here.'
		,type='SelectBox'
		,defaultValue='default'
		,required=false
		,validate='None'
		,regex=''
		,message=''
		,optionList='default^0^1^2^3^4^5^6^7^8^9^10^11^12^13^14^15^16^17^18'
		,optionLabelList='Auto Fit All Locations To Viewport^0 (Fully Zoomed Out-Earth Map)^1^2^3^4^5^6^7^8^9^10^11^12^13^14^15^16^17^18 (Fully Zoomed In)'
		,parentType=local.parentType
		,orderNo=9
	);
	

};
</cfscript>