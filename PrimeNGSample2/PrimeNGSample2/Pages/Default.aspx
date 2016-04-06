<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />
    
    <link rel="stylesheet" type="text/css" href="../node_modules/primeui/themes/bootstrap/theme.css" />
    <link rel="stylesheet" type="text/css" href="../node_modules/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../node_modules/primeui/primeui-ng-all.min.css" />

    <!-- 1. Load libraries -->   
    <script src="../node_modules/angular2/bundles/angular2-polyfills.js" type="text/javascript"></script>
    <script src="../node_modules/es6-shim/es6-shim.js" type="text/javascript"></script>
    <script src="../node_modules/systemjs/dist/system-polyfills.js" type="text/javascript"></script>
    <script src="../node_modules/angular2/es6/dev/src/testing/shims_for_IE.js" type="text/javascript"></script>
     <script src="../node_modules/systemjs/dist/system.js" type="text/javascript"></script>
    <script src="../node_modules/systemjs/dist/system.src.js" type="text/javascript"></script>
    <script src="../node_modules/primeui/primeui-ng-all.min.js" type="text/javascript"></script>

    <!-- 2. Configure SystemJS -->
    <script type="text/javascript">
        System.config({
            defaultJSExtensions: true,
            packages: {
                '../Scripts/app': { "defaultExtension": 'js' }
            },
            map: {
                'angular2': '../node_modules/angular2',
                'primeng': '../node_modules/primeng'
            }
        });
        System.import('../Scripts/app/boot').then(null, console.error.bind(console));
    </script>

    <script src="../node_modules/rxjs/bundles/Rx.js" type="text/javascript"></script>
    <script src="../node_modules/angular2/bundles/angular2.dev.js" type="text/javascript"></script>
    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Page Title
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <div><my-app>Loading...</my-app></div>
    <div>
        <p id="message">
            <!-- The following content will be replaced with the user name when you run the app - see App.js -->
            initializing...
        </p>
    </div>

</asp:Content>
