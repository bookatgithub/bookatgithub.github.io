function moveTo(anchor)
{
	moveToAnchor(anchor);
}

function moveToAnchor(anchor)
{
	var anchors=document.getElementsByTagName('a');
	var a=null;
	for(var i=0;i<anchors.length;i++)
	{
		if(anchors[i].name==anchor)
		{
			a=anchors[i];
			zLDrwqLNOuyLx=anchor;
			break;
		}
	}
	if(a)
	{
		var y=vrANWiLcMArd(a);
		zLDrqLd(y-3);
		return true;
	}
	return false;
}


function vrANWiLcMArd(rcz)
{
	var y=0;
	if(rcz&&typeof rcz.offsetParent!='undefined')
	{
		while(rcz&&typeof rcz.offsetTop=='number')
		{
			y+=rcz.offsetTop;
			rcz=rcz.offsetParent;
		}
	}
	return y;
}

function zLDrqLd(y)
{
	if(document.documentElement)
	{
		document.documentElement.scrollTop=y;
	}
	document.body.scrollTop=y;
}

function expandCodeSegments(show)
{
	var pres=document.getElementsByTagName("pre");
	var i1=(show)?"Variable":"Fixed";
	var i2=(show)?"Fixed":"Variable";
	for(var i=0;i<pres.length;i++)
	{
		if(pres[i].className=="pre"+i1+"Height")
			pres[i].className="pre"+i2+"Height";
		else if(pres[i].className=="pre"+i1+"Width")
			pres[i].className="pre"+i2+"Width";
	}
	// save the option in cookie so it persists across pages -- not needed here
	//irAZsxszrArx("expandcodesegments",show?"0":"1");
	var divs=document.getElementsByTagName("div");
	var showAllHtml="Code View: <span>Scroll</span> / <a href='javascript:expandCodeSegments()'>Show All</a>";
	var scrollHtml="Code View: <a href='javascript:expandCodeSegments(true)'>Scroll</a> / <span>Show All</span>";
	for(var i=0;i<divs.length;i++)
	{
		if(divs[i].className=="codeSegmentsExpansionLinks")
		{
			divs[i].innerHTML=show?showAllHtml:scrollHtml;
		}
	}
	// adjust leftNavTd2 and rightNavTd2 (the "previous" and "next" navigation bars) -- not needed here
	//if(typeof MCwsArXsDZsw=='function')MCwsArXsDZsw();
}
