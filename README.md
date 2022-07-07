# Security Testing:
## Url: <http://demo.testfire.net/>
## Risk Statement:
The web application  is running into the http server where the ssl is not active. For the reason the post   request should be go with simple text format into the server.  


|**Tools used:**|Wireshark |
| :- | :- |
|<p>**Risk Rating:**  </p><p></p>|<p>**HIGH** </p><p></p>|
|<p>**Attack Type:**</p><p></p>|<p>**Bruit force** </p><p></p>|

## **Testing  method:** 
![](Aspose.Words.d33b99ae-7948-4cb5-8bde-6419b985d85d.001.png)            

Though Tool of Wireshark, we just get the network packet into the website and  received packet send the response simple text format so , we got the username and password which is client using for get into the website. 


## Remediation:
* Add new  SSL Certification with advanced Cryptography

## Risk Statement:
The web application is using java servlet server response. The web-application running into http server but the application is reflected DOM  

|**Tools used:**|NA|
| :- | :- |
|<p>**Risk Rating:**  </p><p></p>|<p>**HIGH** </p><p></p>|
|<p>**Attack Type:**</p><p></p>|<p>**REFLECTED_XSS**</p><p></p>|

## **Testing  method:** 
When add the script into url the hole things is reflected . so, lots of phishing  attack has to be demonstrate though it. 

`[http://demo.testfire.net/search.jsp?query=<script>alert(document.lastModified);</script](http://demo.testfire.net/search.jsp?query=%3cscript%3ealert\(document.lastModified\);%3c/script)>`
            
            
 <img width="566" alt="image" src="https://user-images.githubusercontent.com/65080702/177851893-26e6e67b-9b66-42b2-84e1-62c52b91d040.png">

##
## Remediation:
Remove all the special character uses in html entries. The key html entities to identify

are:

* \> (greater than)

* < (less than)

* & (ampersand)

* ' (apostrophe or single quote)

* " (double quote)







