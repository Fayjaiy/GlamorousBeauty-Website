# GlamorousBeauty-Website
This is Glamorous Beauty's online shop, the secured version.  This website is prepared for Web Technology and Security
Introduction:
Glamorous Beauty's online shop is an e-commerce website that sells beauty products to customers. However, during a recent security audit, it was discovered that the website was vulnerable to XSS attacks, which could have potentially led to the compromise of users' sensitive information. In this report, we will discuss the three types of XSS attacks and the measures taken to remedy the vulnerabilities on the GlamorousBeauty-Website.

XSS Attacks:
XSS, or Cross-Site Scripting, is a type of web vulnerability that allows an attacker to inject malicious scripts into a web page viewed by other users. There are three types of XSS attacks: reflected, stored, and DOM-based. Reflected XSS occurs when an attacker injects a script into a webpage that is then reflected back to the user, usually through a search bar or input field. Stored XSS attacks occur when the attacker injects a script that is permanently stored on the server, affecting all users who access the affected page. Finally, DOM-based XSS attacks occur when the attacker exploits a vulnerability in the website's front-end code to execute a script on the client side.

Remediation:
Upon discovering the website's vulnerabilities, the Glamorous Beauty team took prompt action to remediate the issue. They employed the following measures to secure their website against XSS attacks:

Input Validation & Sanataization: The team implemented strict input validation and Sanataization to ensure that user inputs were sanitized and free from malicious scripts.

Code Review: The team conducted a thorough review of the website's code to identify any potential vulnerabilities and addressed them promptly.

Penetration Testing: Regular penetration testing was conducted to identify any new vulnerabilities that may arise.

Conclusion:
In conclusion, the Glamorous Beauty team successfully remedied the vulnerabilities on their website and made it secure against XSS attacks. By implementing proper security measures, they were able to safeguard their users' sensitive information and maintain the trust and confidence of their customers. It is important for website owners to take website security seriously and regularly assess and address potential vulnerabilities to ensure a safe and secure online experience for their users.


