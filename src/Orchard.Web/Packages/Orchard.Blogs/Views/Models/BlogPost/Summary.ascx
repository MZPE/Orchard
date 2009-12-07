﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ItemDisplayViewModel>" %>
<%@ Import Namespace="Orchard.Models"%>
<%@ Import Namespace="Orchard.Blogs.Models"%>
<%@ Import Namespace="Orchard.Models.ViewModels"%>
<%@ Import Namespace="Orchard.Blogs.Extensions"%>
<%@ Import Namespace="Orchard.Blogs.ViewModels"%>
<!-- HACK: (erikpo) Need to figure out how to make the model of the partial be templated -->
<% BlogPost model = Model.Item.As<BlogPost>(); %>
<h3><a href="<%=Url.BlogPost(model.Blog.Slug, model.Slug) %>"><%=Html.Encode(model.Title) %></a></h3>
<div class="meta">
    <%=Html.PublishedState(model) %>
    | <a href="#">?? comments</a>
</div>
<div class="content"><%=model.Body ?? "<p><em>there's no content for this blog post</em></p>" %></div>
<%--<p class="actions">
    <span class="construct">
        <a href="<%=Url.BlogPostEdit(model.Blog.Slug, model.Slug) %>" class="ibutton edit" title="Edit Post">Edit Post</a>
        <a href="<%=Url.BlogPost(model.Blog.Slug, model.Slug) %>" class="ibutton view" title="View Post">View Post</a><%
        if (model.Published == null) { // todo: (heskew) be smart about this and maybe have other contextual actions - including view/preview for view up there ^^ %>
        <a href="<%=Url.BlogPost(model.Blog.Slug, model.Slug) %>" class="ibutton publish" title="Publish Post Now">Publish Post Now</a>
        <% } %>
    </span>
    <span class="destruct"><a href="#" class="ibutton remove" title="Remove Post">Remove Post</a></span>
</p>--%>