<%--
/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/html/portlet/sites_admin/init.jsp" %>

<%
String toolbarItem = ParamUtil.getString(request, "toolbarItem", "browse");

String sitesListView = ParamUtil.get(request, "sitesListView", SiteConstants.LIST_VIEW_TREE);
%>

<aui:nav cssClass="nav-tabs">
	<portlet:renderURL var="viewSitesTreeURL">
		<portlet:param name="struts_action" value="/sites_admin/view" />
		<portlet:param name="toolbarItem" value="browse" />
		<portlet:param name="sitesListView" value="<%= SiteConstants.LIST_VIEW_TREE %>" />
	</portlet:renderURL>

	<aui:nav-item href="<%= viewSitesTreeURL %>" label="browse" selected='<%= toolbarItem.equals("browse") %>' />

	<portlet:renderURL var="viewSitesFlatURL">
		<portlet:param name="struts_action" value="/sites_admin/view" />
		<portlet:param name="toolbarItem" value="view-all-sites" />
		<portlet:param name="sitesListView" value="<%= SiteConstants.LIST_VIEW_FLAT_SITES %>" />
	</portlet:renderURL>

	<aui:nav-item href="<%= viewSitesFlatURL %>" label="all-sites" selected='<%= toolbarItem.equals("view-all-sites") %>' />
</aui:nav>

<aui:nav-bar>
	<aui:nav>
		<%@ include file="/html/portlet/sites_admin/toolbar_content.jspf" %>
	</aui:nav>
</aui:nav-bar>

<c:if test="<%= layout.isTypeControlPanel() %>">
	<div id="breadcrumb">
		<liferay-ui:breadcrumb showCurrentGroup="<%= false %>" showCurrentPortlet="<%= false %>" showGuestGroup="<%= false %>" showLayout="<%= false %>" showPortletBreadcrumb="<%= true %>" />
	</div>
</c:if>