<#-- $This file is distributed under the terms of the license in LICENSE$ -->

</div> <!-- #wrapper-content -->

<footer role="contentinfo">
    <p class="copyright">
        <#if copyright??>
            <small>&copy;${copyright.year?c}
            <#if copyright.url??>
                <a href="${copyright.url}" title="${i18n().menu_copyright}">${copyright.text}</a>
            <#else>
                ${copyright.text}
            </#if>
             | <a class="terms" href="${urls.termsOfUse}" title="${i18n().menu_termuse}">${i18n().menu_termuse}</a></small> |
        </#if>
        ${i18n().menu_powered} <a class="powered-by-vivo" href="http://vivoweb.org" target="_blank" title="${i18n().menu_powered} VIVO"><strong>VIVO</strong></a>
        <#if user.hasRevisionInfoAccess>
             | ${i18n().menu_version} <a href="${version.moreInfoUrl}" title="${i18n().menu_version}">${version.label}</a>
        </#if>
    </p>

    <nav role="navigation">
        <ul id="footer-nav" role="list">
            <li role="listitem"><a href="${urls.about}" title="${i18n().menu_about}">${i18n().menu_about}</a></li>
            <li role="listitem"><a href="mailto:experts@library.ucdavis.edu" title="${i18n().menu_contactus}">${i18n().menu_contactus}</a></li>
            <li role="listitem"><a href="https://github.com/ucd-library/covid19-research-registery/issues/new/choose" title="Report Issue" target="_blank">Report Issue</a></li>
            <#--  <#if urls.contact??>
                <li role="listitem"><a href="${urls.contact}" title="${i18n().menu_contactus}">${i18n().menu_contactus}</a></li>
            </#if>  -->
            <#--  <li role="listitem"><a href="http://www.vivoweb.org/support" target="blank" title="${i18n().menu_support}">${i18n().menu_support}</a></li>  -->
        </ul>
    </nav>
</footer>

<script>
    var googleid = "${i18n().google_analytics_id}";
    if( googleid ) {
        let script = document.createElement('script');
        script.src = "https://www.googletagmanager.com/gtag/js?id="+googleid;
        script.setAttribute('async', 'async');
        document.body.appendChild(script);

        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', 'UA-162893029-1');
    }
</script>

<#include "scripts.ftl">
