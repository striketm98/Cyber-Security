# Security Testing:
# Url: <http://demo.testfire.net/>
# Risk Statement:
The web application  is running into the http server where the ssl is not active. For the reason the post   request should be go with simple text format into the server.  


|**Tools used:**|Wireshark |
| :- | :- |
|<p>**Risk Rating:**  </p><p></p>|<p>**HIGH** </p><p></p>|
|<p>**Attack Type:**</p><p></p>|<p>**Bruit force** </p><p></p>|

# **Testing  method:** 
   <img width="962" alt="image" src="https://user-images.githubusercontent.com/65080702/177790843-a77a7926-4d67-437c-8666-28b307d62dd9.png">

Though Tool of Wireshark, we just get the network packet into the website and  received packet send the response simple text format so , we got the username and password which is client using for get into the website. 

## Remediation:
Add new  SSL Certification with advanced Cryptographic method. 


