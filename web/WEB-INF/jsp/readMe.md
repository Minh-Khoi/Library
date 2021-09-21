When you copy the UI HTML Template from a static web project, and looking forward to pasting the template to the JSP file of a Java EE (or Spring) project. You must learn how to
convert the <b>relative path</b> (in the tags: script:src, img:src, link:href, a:href) to the path base on the project domain.

02 steps to handle the relative path:
St1: Find all the String such as : <b>` href="http`<b> or <b>` src="http`</b>, and add a space between "=" and `"`
St2: Find all the String such as :  <b>` href="` and ` src="`</b>, replace them with: ` href="${pageContext.request.ServletContext}/` 
  
