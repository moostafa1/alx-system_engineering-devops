# Project Name.
**0x07. Networking basics #0**

## Author's Details.
Name: *Mostafa Noaman Ahmed*

Email: *desham8@gmail.com*


## Project Description.
Learn the OSI model, what LAN and WAN are, TCP/UDP and the internet.



OSI (Open Systems Interconnection) is an abstract model to describe layered communication and computer network design. The idea is to segregate the different parts of what make communication possible.

It is organized from the lowest level to the highest level:

* The lowest level: layer 1 which is for transmission on physical layers with electrical impulse, light or radio signal
* The highest level: layer 7 which is for application specific communication like SNMP for emails, HTTP for your web browser, etc

Keep in mind that the OSI model is a concept, it’s not even tangible. The OSI model doesn’t perform any functions in the networking process. It is a conceptual framework so we can better understand complex interactions that are happening. Most of the functionality in the OSI model exists in all communications systems.
[OSI model](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2018/6/4e6a0ad87a65d7054248.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20231201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231201T164617Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=fbaa178cf527783b65c7113b492fd3d95ebe7d8763fd4b0b78a82d1c84615399)
In this project we will mainly focus on:

* The Transport layer and especially TCP/UDP
* On the Network layer with IP and ICMP

The image bellow describes more concretely how you can relate to every level.
[OSI levels](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/0fc96bd99faa7941b18bcae4c5f90c6acd11791d.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20231201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231201T164617Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=5c44f0444887d64301abcc41a9ae3cffc528ca311e42c1d6fc41505305fd734f)

* **0. OSI model** - What is the OSI model? How is the OSI model organized? - `0-OSI_model`.
    ```
    What is the OSI model?
        1.  Set of specifications that network hardware manufacturers must respect.
        2.  The OSI model is a conceptual model that characterizes the communication functions of a telecommunication system without regard to their underlying internal structure and technology.
        3.  The OSI model is a model that characterizes the communication functions of a telecommunication system with a strong regard for their underlying internal structure and technology.

    How is the OSI model organized?
        1.  Alphabetically
        2.  From the lowest to the highest level.
        3.  Randomly
    ```


---
[Types of Networks](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/4b995d4f8078b44afa968d68a98035d2bd7e8fac.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20231201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231201T164617Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=9b445315625782ace9248acd9c1de44ff3085f0736f458523fa5cbfc06ea54f6)

* **1. Types of network** - What type of network a computer in local is connected to? What type of network could connect an office in one building to another office in a building a few streets away? What network do you use when you browse www.google.com from your smartphone (not connected to the Wifi)? - `1-types_of_network`.
    ```
    What type of network a computer in local is connected to?
    Internet
        1.  WAN
        2.  LAN

    What type of network could connect an office in one building to another office in a building a few streets away?
        1.  Internet
        2.  WAN
        3.  LAN

    What network do you use when you browse www.google.com from your smartphone (not connected to the Wifi)?
        1.  Internet
        2.  WAN
        3.  LAN
    ```
---

[MAC Address](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/1e348ba3bcbb094b02922f821ffeb3d8c5438b7b.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20231201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231201T164617Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=829b19fe585d26fb93aec5f68a4b95a2f22dd741c969c631a93d855bd51bbe25)
* **2. MAC and IP address** - What is a MAC address? What is an IP address? - `2-MAC_and_IP_address`.
    ```
    What is a MAC address?
        1.  The name of a network interface.
        2.  The unique identifier of a network interface.
        3.  A network interface.

    What is an IP address?
        1.  Is to devices connected to a network what postal address is to houses.
        2.  The unique identifier of a network interface.
        3.  Is a number that network devices use to connect to networks.
    ```
---

[TCP vs UDP](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/3d92e3c4a470f8ecf4c73db511fcbbadaa002e1c.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20231201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231201T164617Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=6ddd43d85d10639c5f5e4940a5c1ced94d5ecdcd1084122487f790ac222d13c4)
* **3. UDP and TCP** - Which statement is correct for the TCP box? Which statement is correct for the UDP  box? Which statement is correct for the TCP worker? - `3-UDP_and_TCP`.
    ```
    Which statement is correct for the TCP box?
        1.  It is a protocol that is transferring data in a slow way but surely.
        2.  It is a protocol that is transferring data in a fast way and might loss data along in the process.
    Which statement is correct for the UDP box?
        1.  It is a protocol that is transferring data in a slow way but surely.
        2.  It is a protocol that is transferring data in a fast way and might loss data along in the process.
    Which statement is correct for the TCP worker?
        1   Have you received boxes x, y, z?
        2.  May I increase the rate at which I am sending you boxes?
    ```
---


* **4. TCP and UDP ports** - Write a Bash script that displays listening ports. - `4-TCP_and_UDP_ports`.
---

[ping and ICMP](https://media.giphy.com/media/uDxkJAVSU7GY8/giphy.gif)
The Internet Control Message Protocol (ICMP) is a protocol in the Internet protocol suite. It is used by network devices, to check if other network devices are available on the network. The command ping uses ICMP to make sure that a network device remains online or to troubleshoot issues on the network.
* **5. Is the host on the network** - Write a Bash script that pings an IP address passed as an argument. - `5-is_the_host_on_the_network`.


## Collaborate

To collaborate, reach me through my email address desham8@gmail.com
