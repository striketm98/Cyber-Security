# Security Testing:
## Url: <http://demo.testfire.net/>




## Test Statement:
The web application  is running into the http server where the ssl is not active. For the reason the post   request should be go with simple text format into the server.  

<img width="411" alt="image" src="https://user-images.githubusercontent.com/65080702/178159826-ac5e28f4-109d-4e60-b97d-26341a4d93da.png">



|**Tools used:**|Wireshark |
| :- | :- |
|<p>**Risk Rating:**  </p><p></p>|<p>**HIGH** </p><p></p>|
|<p>**Attack Type:**</p><p></p>|<p>**Brute force** </p><p></p>|

## **Testing  method:** 
![](Aspose.Words.d33b99ae-7948-4cb5-8bde-6419b985d85d.001.png)            

Though Tool of Wireshark, we just get the network packet into the website and  received packet send the response simple text format so , we got the username and password which is client using for get into the website. 


## Remediation:
* Add new  SSL Certification with advanced Cryptography

## Test Statement:
The web application is using java servlet server response. The web-application running into http server but the application is reflected DOM  

|**Tools used:**|NA|
| :- | :- |
|<p>**Risk Rating:**  </p><p></p>|<p>**HIGH** </p><p></p>|
|<p>**Attack Type:**</p><p></p>|<p>**REFLECTED_XSS**</p><p></p>|

## **Testing  method:** 
When add the script into url the hole things is reflected . so, lots of phishing  attack has to be demonstrate though it. 

`http://demo.testfire.net/search.jsp?query=<script>alert(document.lastModified);</script>`
            
            
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

## Test Statement:

<img width="556" alt="image" src="https://user-images.githubusercontent.com/65080702/178159538-7f550794-9e6a-4203-aa7f-56fa43c7fee5.png">


Mainly I given the sql payload into the login pages where I can check that used DBMS is vulnerable or not 

|**Tools used:**|Brup-suit|
| :- | :- |
|<p>**Risk Rating:**  </p><p></p>|<p>**HIGH** </p><p></p>|
|<p>**Attack Type:**</p><p></p>|<p>**Sql_Injection**</p><p></p>|

## **Testing  method:** 
Connect the forward proxy with  the burp-suit into the search then try to test the post request is working using the payload 

<img width="677" alt="image" src="https://user-images.githubusercontent.com/65080702/178157910-1e4df78d-07ce-4fbf-a9c0-29a71483b71d.png">

## Respose: 

<img width="641" alt="image" src="https://user-images.githubusercontent.com/65080702/178157967-f6d74d84-8e86-4888-a821-3d913df730be.png">

## Remedataion

* Use parameterized query

```String login = request.getParameter("UserName","Password");
String query = "SELECT login FROM user_data WHERE user_name = ? ";  
PreparedStatement pstmt = connection.prepareStatement( query );
pstmt.setString( 1, user_data);
ResultSet results = pstmt.executeQuery( );```

## Test Statement:

We try to intercept some unethical tranction into the website. So, we follow below step:

![Screenshot 2022-07-11 015644](https://user-images.githubusercontent.com/65080702/178191096-d0ac91bb-ede8-4369-97d9-3bd9e7ebed72.jpg)




