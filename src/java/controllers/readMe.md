The Anotation <b>"@PathVariable" and "@ModelAttribute" </b> are the best way to deal with the <b>Form-Requests</b>

To deal with the <b>AJAX Requests</b> (Fetch, XhttpRequest, axios, http-client ....). You should use the Anotaition <b>"@RequestParam" </b> To access HttpServletRequest instance param; or <b>"@RequestBody"</b> to take datas from the property "body" a an Http-Request and convert them to specified-class instances; and <b>"@ResponseBody"</b> to config the way the Controller classes will return data. 

# Example: <b>"@RequestParam" or "@RequestBody"</b> : https://stackoverflow.com/questions/28039709/what-is-difference-between-requestbody-and-requestparam.
# <b> "@ResponseBody" usage</b> (using with @RequestBody): https://stackoverflow.com/questions/11291933/requestbody-and-responsebody-annotations-in-spring

Instead of the complicated solution above, You can use a more simple way: Using <b>HttpServletRequest</b> and <b>HttpServletResponse</b>. But Certainly, It mean you must write
more code
