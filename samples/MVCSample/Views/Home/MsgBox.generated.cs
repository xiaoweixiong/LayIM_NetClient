﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace ASP
{
    using System;
    using System.Collections.Generic;
    using System.IO;
    using System.Linq;
    using System.Net;
    using System.Text;
    using System.Web;
    using System.Web.Helpers;
    using System.Web.Mvc;
    using System.Web.Mvc.Ajax;
    using System.Web.Mvc.Html;
    using System.Web.Routing;
    using System.Web.Security;
    using System.Web.UI;
    using System.Web.WebPages;
    using MVCSample;
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("RazorGenerator", "2.0.0.0")]
    [System.Web.WebPages.PageVirtualPathAttribute("~/Views/Home/MsgBox.cshtml")]
    public partial class _Views_Home_MsgBox_cshtml : System.Web.Mvc.WebViewPage<dynamic>
    {
        public _Views_Home_MsgBox_cshtml()
        {
        }
        public override void Execute()
        {
            
            #line 1 "..\..\Views\Home\MsgBox.cshtml"
   Layout = null;
            
            #line default
            #line hidden
WriteLiteral("\r\n<html>\r\n<head>\r\n    <meta");

WriteLiteral(" charset=\"utf-8\"");

WriteLiteral(">\r\n    <meta");

WriteLiteral(" name=\"viewport\"");

WriteLiteral(" content=\"width=device-width, initial-scale=1, maximum-scale=1\"");

WriteLiteral(">\r\n    <title>消息盒子</title>\r\n    <link");

WriteAttribute("href", Tuple.Create(" href=\"", 189), Tuple.Create("\"", 225)
, Tuple.Create(Tuple.Create("", 196), Tuple.Create<System.Object, System.Int32>(Href("~/Scripts/layui/css/layui.css")
, 196), false)
);

WriteLiteral(" rel=\"stylesheet\"");

WriteLiteral(" />\r\n    <link");

WriteAttribute("href", Tuple.Create(" href=\"", 257), Tuple.Create("\"", 279)
, Tuple.Create(Tuple.Create("", 264), Tuple.Create<System.Object, System.Int32>(Href("~/css/apply.css")
, 264), false)
);

WriteLiteral(" rel=\"stylesheet\"");

WriteLiteral(" />\r\n</head>\r\n<body>\r\n");

            
            #line 11 "..\..\Views\Home\MsgBox.cshtml"
    
            
            #line default
            #line hidden
            
            #line 11 "..\..\Views\Home\MsgBox.cshtml"
       
        var list = new List<LayIM.NetClient.Model.LayimApplyModel> {};
    
            
            #line default
            #line hidden
WriteLiteral("\r\n    <ul");

WriteLiteral(" class=\"layim-msgbox\"");

WriteLiteral(" id=\"LAY_view\"");

WriteLiteral(">\r\n");

            
            #line 15 "..\..\Views\Home\MsgBox.cshtml"
        
            
            #line default
            #line hidden
            
            #line 15 "..\..\Views\Home\MsgBox.cshtml"
         foreach (var item in list)
        {

            
            #line default
            #line hidden
WriteLiteral("            <li");

WriteLiteral(" data-uid=\"");

            
            #line 17 "..\..\Views\Home\MsgBox.cshtml"
                     Write(item.uid);

            
            #line default
            #line hidden
WriteLiteral("\"");

WriteLiteral(" data-fromgroup=\"0\"");

WriteLiteral(">\r\n            <a");

WriteLiteral(" href=\"#\"");

WriteLiteral(">\r\n                <img");

WriteAttribute("src", Tuple.Create(" src=\"", 599), Tuple.Create("\"", 617)
            
            #line 19 "..\..\Views\Home\MsgBox.cshtml"
, Tuple.Create(Tuple.Create("", 605), Tuple.Create<System.Object, System.Int32>(item.avatar
            
            #line default
            #line hidden
, 605), false)
);

WriteLiteral(" class=\"layui-circle layim-msgbox-avatar\"");

WriteLiteral(">\r\n            </a>\r\n            <p");

WriteLiteral(" class=\"layim-msgbox-user\"");

WriteLiteral(">\r\n                <a");

WriteLiteral(" href=\"#\"");

WriteLiteral(">");

            
            #line 22 "..\..\Views\Home\MsgBox.cshtml"
                       Write(item.name);

            
            #line default
            #line hidden
WriteLiteral("</a>\r\n                <span>");

            
            #line 23 "..\..\Views\Home\MsgBox.cshtml"
                 Write(item.addtime);

            
            #line default
            #line hidden
WriteLiteral("</span>\r\n            </p>\r\n            <p");

WriteLiteral(" class=\"layim-msgbox-content\"");

WriteLiteral(">\r\n");

WriteLiteral("                ");

            
            #line 26 "..\..\Views\Home\MsgBox.cshtml"
           Write(item.msg);

            
            #line default
            #line hidden
WriteLiteral("\r\n");

            
            #line 27 "..\..\Views\Home\MsgBox.cshtml"
                
            
            #line default
            #line hidden
            
            #line 27 "..\..\Views\Home\MsgBox.cshtml"
                 if (item.other?.Length > 0)
                {

            
            #line default
            #line hidden
WriteLiteral("                 <span>附言: ");

            
            #line 29 "..\..\Views\Home\MsgBox.cshtml"
                      Write(item.other);

            
            #line default
            #line hidden
WriteLiteral("</span>\r\n");

            
            #line 30 "..\..\Views\Home\MsgBox.cshtml"
                }

            
            #line default
            #line hidden
WriteLiteral("            </p>\r\n");

            
            #line 32 "..\..\Views\Home\MsgBox.cshtml"
                
            
            #line default
            #line hidden
            
            #line 32 "..\..\Views\Home\MsgBox.cshtml"
                 if (item.result == 0)
                {

            
            #line default
            #line hidden
WriteLiteral("            <p");

WriteLiteral(" class=\"layim-msgbox-btn\"");

WriteLiteral(">\r\n                <button");

WriteLiteral(" class=\"layui-btn layui-btn-small\"");

WriteLiteral(" data-type=\"agree\"");

WriteLiteral(">同意</button>\r\n                <button");

WriteLiteral(" class=\"layui-btn layui-btn-small layui-btn-primary\"");

WriteLiteral(" data-type=\"refuse\"");

WriteLiteral(">拒绝</button>\r\n            </p>\r\n");

            
            #line 38 "..\..\Views\Home\MsgBox.cshtml"
                }

            
            #line default
            #line hidden
WriteLiteral("        </li>\r\n");

            
            #line 40 "..\..\Views\Home\MsgBox.cshtml"
        } 

            
            #line default
            #line hidden
WriteLiteral("    </ul>\r\n    <script");

WriteAttribute("src", Tuple.Create(" src=\"", 1435), Tuple.Create("\"", 1465)
, Tuple.Create(Tuple.Create("", 1441), Tuple.Create<System.Object, System.Int32>(Href("~/Scripts/layui/layui.js")
, 1441), false)
);

WriteLiteral("></script>\r\n    <script");

WriteAttribute("src", Tuple.Create(" src=\"", 1489), Tuple.Create("\"", 1513)
, Tuple.Create(Tuple.Create("", 1495), Tuple.Create<System.Object, System.Int32>(Href("~/Scripts/apply.js")
, 1495), false)
);

WriteLiteral("></script>\r\n</body>\r\n</html>");

        }
    }
}
#pragma warning restore 1591
