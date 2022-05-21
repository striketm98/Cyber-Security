# Install and Use Wireshark on Ubuntu 20.04 LTS

Wireshark is an open-source network protocol analyzer tool indispensable for system administration and security. It drills down and displays data travelling on the network. Wireshark allows you to either capture live network packets or to save it for offline analysis.

One of the features of Wireshark that you will love to learn is the display filter which lets you inspect only that traffic you are really interested in. Wireshark is available for various platforms including Windows, Linux, MacOS, FreeBSD, and some others.

Some of the tasks one can perform with Wireshark are

Capturing and finding traffic passing through your network
Inspection of hundreds of different protocols
Live capture of traffic/offline analysis
Troubleshooting dropped packets and latency problems
Looking at attempts of attacks or malicious activities
In this article, we will explain how to install Wireshark on the Ubuntu system. The installation procedures have been tested on Ubuntu 20.04 LTS.

Note:

We have used the command line Terminal for the installation procedure. You can launch the Terminal via Ctrl+Alt+T keyboard shortcut.
You must be a root user or have sudo privileges in order to install and use Wireshark to capture data on your system.
Installing Wireshark
For installing Wireshark, you will need to add the “Universe” repository. Issue the following command in Terminal to do so:

$ sudo add-apt-repository universe
Now issue the following command in Terminal to install Wireshark on your system:

$ sudo apt install Wireshark
When prompted for a password, type sudo password.
After running the above command, you might be asked for confirmation, hit y, and then hit Enter, after which installation of Wireshark will be started in your system.

During the installation of Wireshark, the following window will appear asking you if you want to allow non-superusers to capture packets. Enabling it can be a security risk, so it is better to leave it disabled and hit Enter.
Once the installation of Wireshark is completed, you can verify it using the following command in Terminal:
$ wireshark --version
If Wireshark has installed successfully, you will a similar output displaying the version of Wireshark installed.

Launch Wireshark
Now you are ready to launch and use Wireshark on your Ubuntu machine. In order to launch Wireshark, issue the following command in Terminal:
$ sudo wireshark
If you are logged in as a root user, you can also launch Wireshark form the GUI. Hit the super key and type wireshark in the search bar. When the icon for the Wireshark appears, click on it to launch it.
Remember you will not be able to capture network traffic if you launch Wireshark without root or sudo privilege.

When the Wireshark opens, you will see the following default view:
Using Wireshark
Wireshark is a powerful tool with plenty of features. Here we will just go through the basics of the two important features that are: packet capture and display filter.

Packet Capture
In order to capture packets using Wireshark, follow the below simple steps:

1. From the list of available network interfaces in the Wireshark window, select the interface on which you want to capture packets.

2. From the toolbar at the top, click the start button to start capturing the packets on the selected interface as shown in the following screenshot.

<img width="424" alt="image" src="https://user-images.githubusercontent.com/65080702/169664410-bf0076bb-d80a-4665-8e94-4ef2247cba30.png">
If there is currently no traffic, then you can generate some traffic by visiting any website or by accessing a file shared on the network. After that, you will see the captured packets displaying in real-time.

3. To stop capturing the packets, click the stop button as shown in the following screenshot.
<img width="415" alt="image" src="https://user-images.githubusercontent.com/65080702/169664449-c0beeb35-56c3-419d-83ca-555f8cfb5132.png">
In the above screenshot, you can see the Wireshark divided into three panes:

1. The topmost panelist all the packets captured by Wireshark.

2. The middle pane shows packet header details for each selected packet.

3. The third pane shows the raw data of each selected packet.

Display filter
As you have seen in the above screenshots, the Wireshark displays a large number of packets for single network activity. In a normal network, there are thousands of packets traveling back and forth on your network. It is very difficult to find a specific packet form thousands of captured packets. Here comes the display filtering feature of Wireshark.

With Wireshark display filters, you can only display the types of packets you are looking for. In this way, it narrows down the results and makes it easy for you to find what you are looking for. You can filter the results based on protocols, source and destination IP addresses, port number, and some others.

Wireshark has a lot of pre-defined filters that you can make use of. When you start typing the filter name, Wireshark helps you to auto-complete it by suggesting names. To only show the packets containing a specific protocol, type the protocol name into the “Apply a display filter” field under the toolbar.

Example:

To display only the TCP packets from all the captured packets, type tcp. After entering the filter name, you will see only the TCP packets.

<img width="418" alt="image" src="https://user-images.githubusercontent.com/65080702/169664465-3082e781-7b85-45e5-a063-c92b56d699f7.png">

That’s how you can install and use Wireshark on Ubuntu 20.04 LTS system. We have just discussed the basics of the Wireshark tool. In order to have a solid grasp on Wireshark, you need to go through all of the features and experiment with them.

#  Install Wireshark on Windows

Wireshark is software that is widely used in the analysis of data packets in a network. Wireshark is completely free and open source. This packet analyzer is used for a variety of purposes like troubleshooting networks, understanding communication between two systems, developing new protocols, etc. The original name of Wireshark was Ethereal which was changed in 2006 due to some company’s copyright issues. This software is written in C and C++, and its initial release was in the year 1998. Its latest release is 3.6.0 which got released on 22 November 2021. Wireshark is a cross-platform software, it can be run on Linux, windows, mac, and any other operating system. 

# Installing Wireshark on Windows:
Follow the below steps to install Wireshark on Windows:

Step 1:
Visit the official Wireshark website using any web browser. 
![ww1](https://user-images.githubusercontent.com/65080702/169664545-14f78afa-dabe-47c9-a3aa-79acbc89ab28.png)
Step 2: Click on Download, a new webpage will open with different installers of Wireshark.
![ww2](https://user-images.githubusercontent.com/65080702/169664558-8fec3f96-f6d0-4472-b0ac-112504b4cac5.png)
Step 3: Downloading of the executable file will start shortly. It is a small 73.69 MB file that will take some time.
![w3](https://user-images.githubusercontent.com/65080702/169664574-223cc4f5-6a0b-4afc-82e7-02053225ae1f.png)
Step 4: Now check for the executable file in downloads in your system and run it.
![w4](https://user-images.githubusercontent.com/65080702/169664583-265196e0-b5ce-4817-825d-c7f04190fd48.png)
Step 5: It will prompt confirmation to make changes to your system. Click on Yes.
![w5](https://user-images.githubusercontent.com/65080702/169664604-b2c104c9-3be5-4e3e-9f7c-f5ab993a3098.png)
Step 6:  Setup screen will appear, click on Next.
![w6](https://user-images.githubusercontent.com/65080702/169664615-5175e2f0-d60e-4e32-843d-466f01016e76.png)
Step 7: The next screen will be of License Agreement, click on Noted.
![w7](https://user-images.githubusercontent.com/65080702/169664623-52883794-66e1-4884-969b-0a59e23f0b45.png)
Step 8: This screen is for choosing components, all components are already marked so don’t change anything just click on the Next button.
![w8](https://user-images.githubusercontent.com/65080702/169664641-001f1bb7-ecdd-46a0-a3cb-720b8f7ec8e4.png
Step 9: This screen is of choosing shortcuts like start menu or desktop icon along with file extensions which can be intercepted by Wireshark, tick all boxes and click on Next button.
![w9a](https://user-images.githubusercontent.com/65080702/169664652-a5808485-b517-4f07-87a7-86ce86c86d63.png)
Step 10: The next screen will be of installing location so choose the drive which will have sufficient memory space for installation. It needed only a memory space of 223.4 MB.
Step 11: Next screen has an option to install Npcap which is used with Wireshark to capture packets pcap means packet capture so the install option is already checked don’t change anything and click the next button.
![w11](https://user-images.githubusercontent.com/65080702/169664666-b3a92022-3776-4b10-a701-56e1918af7d2.png)
Step 12: Next screen is about USB network capturing so it is one’s choice to use it or not, click on Install.
![w12](https://user-images.githubusercontent.com/65080702/169664668-588adad6-9e9c-4c42-bd7f-c86635ae4c64.png)
Step 14: This installation will prompt for Npcap installation as already checked so the license agreement of Npcap will appear to click on the I Agree button.
![w14](https://user-images.githubusercontent.com/65080702/169664676-294cc645-8177-44a2-84dd-9e87369090a8.png)
Step 15: Next screen is about different installing options of npcap, don’t do anything click on Install. 
![w15](https://user-images.githubusercontent.com/65080702/169664689-ad8ef786-9055-4a65-b315-ac2fe7c73037.png)
Step 16: After this installation process will start which will take only a minute.
![w16](https://user-images.githubusercontent.com/65080702/169664700-3d7849ed-e82f-46cc-8802-4992ddf7effc.png)
Step 17: After this installation process will complete click on the Next button.
![w17](https://user-images.githubusercontent.com/65080702/169664712-781ad504-6cad-49d6-b883-212ad114a933.png
Step 18: Click on Finish after the installation process is complete.
![w18](https://user-images.githubusercontent.com/65080702/169664716-c90d1b45-ad0a-4a8e-8b04-f5714232c95e.png)
Step 19: After this installation process of Wireshark will complete click on the Next button.
![w19](https://user-images.githubusercontent.com/65080702/169664723-1368e047-922a-4418-bcec-177908df52ff.png)
Step 20: Click on Finish after the installation process of Wireshark is complete.
![w20](https://user-images.githubusercontent.com/65080702/169664741-ca9f4d8b-7db9-46aa-8eb9-4a4883850bf4.png
Wireshark is successfully installed on the system and an icon is created on the desktop as shown below:
![w21](https://user-images.githubusercontent.com/65080702/169664759-d0d4fad4-86a9-4237-b2e9-ba4c20a35de5.png)
![w22](https://user-images.githubusercontent.com/65080702/169664761-4958cee6-4ce0-4f5f-8e5d-0730795c0dee.png)
