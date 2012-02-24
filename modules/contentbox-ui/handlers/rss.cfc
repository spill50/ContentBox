﻿/**
********************************************************************************
ContentBox - A Modular Content Platform
Copyright 2012 by Luis Majano and Ortus Solutions, Corp
www.gocontentbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************
Apache License, Version 2.0

Copyright Since [2012] [Luis Majano and Ortus Solutions,Corp] 

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License. 
You may obtain a copy of the License at 

http://www.apache.org/licenses/LICENSE-2.0 

Unless required by applicable law or agreed to in writing, software 
distributed under the License is distributed on an "AS IS" BASIS, 
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
See the License for the specific language governing permissions and 
limitations under the License.
********************************************************************************
* Handles RSS Feeds
*/
component extends="BaseContentHandler" singleton{

	/**
	* Display the RSS feeds for the ContentBox
	*/
	function index(event,rc,prc){
		// params
		event.paramValue("category","");
		event.paramValue("contentSlug","");
		event.paramValue("commentRSS",false);

		// Build out the site RSS feeds
		var feed = RSSService.getRSS(comments=rc.commentRSS,category=rc.category,slug=rc.contentSlug);

		// Render out the feed xml
		event.renderData(type="plain",data=feed,contentType="text/xml");
	}

	/**
	* Display the RSS feeds for the pages
	*/
	function pages(event,rc,prc){
		// params
		event.paramValue("category","");

		// Build out the site RSS feeds
		var feed = RSSService.getRSS(category=rc.category,contentType="Page");

		// Render out the feed xml
		event.renderData(type="plain",data=feed,contentType="text/xml");
	}

}