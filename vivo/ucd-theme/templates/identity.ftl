<#-- $This file is distributed under the terms of the license in LICENSE$ -->

<header id="branding" role="banner">
    <div class="branding-layout">

        <h1 class="vivo-logo">
            <a title="registry" href="${urls.home}">
                <img src="${urls.theme}/images/ucd-logo-main-new-white.png" alt="UC Davis Library" />
            </a>
        </h1>
        <div class="tagline">
            <span class="gold">Research Registry</span>
            <span class="light">Prototype</span>
        </div>
        
        <#-- Since we are using a graphic text for the tagline, we won't render ${siteTagline}
        <#if siteTagline?has_content>
            <em>${siteTagline}</em>
        </#if>-->

        <div>
            <nav role="navigation" class="header-navigation-layout">
                <ul id="header-nav" role="list">
                    <#include "languageSelector.ftl">
                    <#--  <li role="listitem"><a href="${urls.index}" title="${i18n().identity_index}">${i18n().identity_index}</a></li>  -->
                    <li role="listitem"><a href="${urls.about}" title="${i18n().menu_about}">${i18n().menu_about}</a></li>
                    <#if user.loggedIn>
                        <#-- COMMENTING OUT THE EDIT PAGE LINK FOR RELEASE 1.5. WE NEED TO IMPLEMENT THIS IN A MORE
                            USER FRIENDLY WAY. PERHAPS INCLUDE A LINK ON THE PAGES THEMSELVES AND DISPLAY IF THE
                            USER IS A SITE ADMIN. tlw72

                            <#if (page??) && (page?is_hash || page?is_hash_ex) && (page.URLToEditPage??) >
                                <li role="listitem"><a href="${page.URLToEditPage}" title="${i18n().identity_edit}">${i18n().identity_edit}</a></li>
                            </#if>
                        -->
                        <#if user.hasSiteAdminAccess>
                            <li role="listitem"><a href="${urls.siteAdmin}" title="${i18n().identity_admin}">${i18n().identity_admin}</a></li>
                        </#if>
                            <li>
                                <ul class="dropdown">
                                    <li id="user-menu"><a href="#" title="${i18n().identity_user}">${user.loginName}</a>
                                        <ul class="sub_menu">
                                            <#if user.hasProfile>
                                                <li role="listitem"><a href="${user.profileUrl}" title="${i18n().identity_myprofile}">${i18n().identity_myprofile}</a></li>
                                            </#if>
                                            <#if urls.myAccount??>
                                                <li role="listitem"><a href="${urls.myAccount}" title="${i18n().identity_myaccount}">${i18n().identity_myaccount}</a></li>
                                            </#if>
                                            <li role="listitem"><a href="${urls.logout}" title="${i18n().menu_logout}">${i18n().menu_logout}</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>



                        ${scripts.add('<script type="text/javascript" src="${urls.base}/js/userMenu/userMenuUtils.js"></script>')}

                    <#else>
                        <li role="listitem"><a class="log-out" title="${i18n().menu_loginfull}" href="${urls.login}">${i18n().menu_login}</a></li>
                    </#if>
                </ul>

            </nav>
            <div>
                <#include "search.ftl" >
            </div>
        </div>
    </div>
    
</header>
<div class="branding-colorbar"></div>