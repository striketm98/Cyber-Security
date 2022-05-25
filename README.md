Install Nessus Scanner on Ubuntu 20.04 LTS server
********************************************************************************
Download Nessus Scanner: 
************************
https://www.tenable.com/downloads/nessus?loginAttempted=true 

Installation of Nessus Scanner:
******************************
sudo dpkg -i Nessus-10.1.1-ubuntu1110_amd64

Enable & Start Scanner services:
*******************************
sudo systemctl enable nessusd

sudo systemctl status nessusd


Install Nessus Scanner on Windows Server:
****************************************************************
Download Nessus Scanner: 
************************
https://www.tenable.com/downloads/nessus?loginAttempted=true 

Installation of Nessus Scanner:
******************************
Run Nessus-10.1.1-x64.msi


Go to the browser
https://server-ip-address:8834

The first step is to select how to install Nessus on the Welcome to Nessus page. (Nessus Essentials, Nessus Professional and Nessus Manager)
the next step, you must click Continue.Note that if you selected Nessus Professional or Nessus Manager in the previous section, the Register Nessus page will appear.
 
Now if you have selected Nessus Essentials, do one of the following:
If you need an activation code, type your name and email address on the activation code download page. Then click on the Email. You can now check your email for your free activation code.
Note that if you already have the activation code, click Skip. 

After completing the above steps, you must now type your activation code on the Register Nessus page.

Click on Continue to create an account page.

You can now create a Nessus Admin account that you use to log in to Nessus. Here you have to click on Submit after entering a username and password.

Nessus completes the configuration process by doing the above.

Activition Code: `BHNN-BLZ9-8C4C-F6GV-WXWR`
UserId: `admin`
Password: `123`
