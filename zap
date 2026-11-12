Experiment: Web Application Vulnerability Scanning Using OWASP ZAP
The following notes are prepared in the same format as your uploaded lab manual, including Aim, Theory, Procedure, Algorithm, Types of Scanning, and Result. The content is expanded for lab examination preparation.
1. Aim
To familiarize with the OWASP ZAP tool and perform automated vulnerability scanning on a web application to identify potential security vulnerabilities.
2. Theory
OWASP ZAP



OWASP ZAP (Zed Attack Proxy) is an open-source web application security testing tool developed by the Open Worldwide Application Security Project (OWASP).

It is used to identify security vulnerabilities in web applications by intercepting, analyzing, and scanning HTTP and HTTPS requests and responses.


OWASP ZAP is widely used by penetration testers, security researchers, and web developers to identify security weaknesses in web applications.

It acts as an intermediary proxy between the browser and the web application. All requests and responses passing through the proxy can be intercepted and analyzed to identify possible vulnerabilities.

ZAP can perform both automated and manual security testing.
Features of OWASP ZAP
1. Automated Scanning: Automatically scans web applications to identify security vulnerabilities.
2. Spidering: Crawls through the web application and discovers available pages, links, and resources.
3. Passive Scanning: Examines HTTP requests and responses without modifying them.
4. Active Scanning: Sends specially crafted requests to identify vulnerabilities.
5. Proxy Interception: Intercepts HTTP and HTTPS communication between the browser and web server.
6. Vulnerability Detection: Identifies possible security issues such as SQL injection, cross-site scripting, and security misconfigurations.
7. Reporting: Generates vulnerability reports containing alerts, risk levels, and descriptions of identified issues.
Working Principle of OWASP ZAP
OWASP ZAP works as a proxy between the client browser and the target web application.

The basic working process is:


1. The user enters the target web application's URL in the browser or ZAP.
2. ZAP intercepts the communication between the browser and the web server.
3. It collects HTTP requests and responses.
4. The spider crawls the website and identifies available pages and links.
5. The passive scanner analyzes the collected traffic for security weaknesses.
6. The active scanner sends test requests to identify additional vulnerabilities.
7. ZAP displays the identified vulnerabilities in the Alerts section.
8. The tester analyzes the results and generates a security report.
Requirements for OWASP ZAP
- OWASP ZAP installation.
- Windows, Linux, or macOS operating system.
- Java 8 or higher for applicable installation packages.
- Internet or network connectivity to access the target web application.
- Target website or web application.
- Permission from the website owner to perform security testing.
Note: According to the PDF, the macOS installer includes the required Java version, while Java 8 or higher must be installed separately for Windows, Linux, and cross-platform versions. The Docker version includes Java.

3. Types of Scanning in OWASP ZAP
OWASP ZAP mainly provides two types of scanning.
A. Passive Scanning
Passive scanning examines HTTP requests and responses without modifying or attacking the target web application.

Characteristics:
1. It does not modify the requests or responses.
2. It is considered safe because it does not actively attack the target.
3. It runs in the background while browsing or crawling the website.
4. It identifies security misconfigurations and other possible vulnerabilities.
5. It helps understand the basic security posture of a web application.
Examples of issues detected:
- Missing security headers.
- Cookie security issues.
- Information disclosure.
- Insecure configuration.
B. Active Scanning
Active scanning attempts to identify vulnerabilities by sending specially crafted requests to the target web application using known attack techniques.

Characteristics:
1. It actively tests the web application.
2. It sends modified or malicious test requests to the target.
3. It identifies vulnerabilities that may not be detected through passive scanning.
4. It uses known attack vectors to test application security.
5. It may affect the target application or its data.
Examples of vulnerabilities detected:
- SQL Injection (SQLi).
- Cross-Site Scripting (XSS).
- Path Traversal.
- Command Injection.
- Other input validation vulnerabilities.
Important for lab exam
Active scanning must only be performed against applications for which testing permission has been obtained. It can cause changes or damage to the target application.

4. ZAP Spiders
OWASP ZAP provides two types of spiders to discover web application pages and resources.
A. Traditional ZAP Spider


The traditional spider examines the HTML content of web application responses to identify links and discover other pages.

Characteristics:
1. It inspects HTML responses.
2. It identifies hyperlinks and URLs.
3. It discovers pages within the web application.
4. It is faster than the AJAX spider.
5. It is less effective for AJAX-based applications that dynamically generate links using JavaScript.
B. AJAX Spider


The AJAX spider is designed to crawl JavaScript-based web applications.

Characteristics:
1. It uses a browser to navigate through the web application.
2. It executes JavaScript code.
3. It renders web pages completely.
4. It identifies dynamically generated links and resources.
5. It is more effective for AJAX-based applications.
6. It is slower than the traditional spider and requires additional configuration in headless environments.
Difference Between Traditional Spider and AJAX Spider
Traditional Spider	AJAX Spider
Examines HTML responses.	Uses a browser to render pages.
Does not execute JavaScript like a real browser.	Executes JavaScript.
Faster scanning.	Slower scanning.
Suitable for traditional websites.	Suitable for JavaScript-based websites.
May miss dynamically generated links.	Can discover dynamically generated links.


5. Procedure
Step 1: Download and Install OWASP ZAP



1. Open a web browser.
2. Visit the official OWASP ZAP website.
3. Download the appropriate installer for the operating system (Windows, Linux, or macOS).
4. Install the application by following the installation instructions.
5. Launch OWASP ZAP.
Official website: Download OWASP ZAP
Step 2: Start OWASP ZAP


1. Open the OWASP ZAP application.
2. When ZAP starts for the first time, it asks whether to create a persistent session.
3. Select the required session option.
Persistent Session: The session is saved locally in an HSQLDB database and can be accessed later.

Non-Persistent Session: Session files are deleted when ZAP is closed.
4. Click the appropriate option to proceed.
5. The ZAP workspace will open.
Step 3: Open the Quick Start Tab


1. In the ZAP workspace, locate the Quick Start tab.
2. Click the Quick Start tab.
3. Select the Automated Scan option.
Step 4: Enter the Target URL

1. In the Attack URL text box, enter the complete URL of the target web application.
2. Example:
http://testphp.vulnweb.com


Use only an authorized testing target, such as a local test application or a deliberately vulnerable training website.

3. Select the appropriate spider option:
- Use Traditional Spider.
- Use AJAX Spider.
- Select both if required.
Step 5: Start Automated Scan
1. After entering the target URL, verify the URL.
2. Select the required spider option.
3. Click the Attack button.
4. ZAP starts crawling the web application.
5. It identifies the available pages, links, functions, and parameters.
6. After crawling, the active scanner tests the discovered pages and parameters for vulnerabilities.



Step 6: Analyze the Scan Results


1. After scanning, navigate to the Alerts section.
2. Observe the vulnerabilities identified by ZAP.
3. Each alert contains information such as:
   - Alert name.
   - Risk level.
   - Confidence level.
   - URL of the affected resource.
   - Description of the vulnerability.
   - Possible solution or recommendation.
4. Click each alert to view detailed information.
5. Analyze the identified security issues.
Risk Levels in OWASP ZAP
Risk Level	Description
High	Serious vulnerability that may cause significant security impact.
Medium	Vulnerability that may affect application security.
Low	Minor security issue or weakness.
Informational	Provides useful security-related information.

Step 7: Generate the Report
1. Navigate to the Report option in ZAP.
2. Select the appropriate report format.
3. Generate the vulnerability assessment report.
4. Save the report for further analysis.
The report contains the identified alerts, risk levels, affected URLs, descriptions, and recommended solutions.

6. Algorithm
Algorithm: Web Application Vulnerability Scanning Using OWASP ZAP
1. Start.
2. Install and launch the OWASP ZAP application.
3. Select the required session option (persistent or non-persistent).
4. Open the Quick Start tab.
5. Select the Automated Scan option.
6. Enter the target web application's URL in the Attack URL field.
7. Select Traditional Spider, AJAX Spider, or both.
8. Click the Attack button.
9. ZAP crawls the target web application and identifies available pages and links.
10. Collect HTTP requests and responses.
11. Perform passive scanning to identify security weaknesses without modifying the requests or responses.
12. Perform active scanning using known attack vectors, if authorized.
13. Identify and classify vulnerabilities based on their risk levels.
14. Open the Alerts section and analyze the detected vulnerabilities.
15. Generate and save the vulnerability assessment report.
16. Stop.

7. Important OWASP ZAP Terminologies
Terminology	Definition
ZAP	Zed Attack Proxy, an open-source web application security testing tool.
Proxy	An intermediary that intercepts communication between a browser and a web server.
Spider	A crawler used to discover pages and links in a web application.
AJAX Spider	A crawler that uses a browser to discover dynamically generated content.
Passive Scan	Examines HTTP traffic without modifying requests or responses.
Active Scan	Sends specially crafted requests to identify vulnerabilities.
Alert	A notification about a possible security vulnerability.
Attack URL	The URL of the target web application being tested.
HTTP Request	A message sent by a client to a web server.
HTTP Response	A message returned by a web server to a client.


8. Result
Thus, the OWASP ZAP tool was successfully used to perform automated vulnerability scanning on the target web application. The application was crawled using the available spiders, and passive and active scanning techniques were used to identify potential security vulnerabilities. The detected vulnerabilities were analyzed based on their risk levels, and a security assessment report was generated.










## Description



OWASP ZAP (Zed Attack Proxy) is an open-source web application security testing tool used to identify vulnerabilities in web applications. It is widely used by security professionals and penetration testers to test the security of websites. ZAP is available for Windows, Linux, macOS, and Docker. Java 8 or higher is required for some installations.

OWASP ZAP works as a proxy between the browser and the web application. It intercepts and analyzes HTTP and HTTPS requests and responses to identify possible security weaknesses. It provides automated scanning features that help testers examine web applications and discover potential vulnerabilities.

ZAP uses spiders or crawlers to explore a website and discover its pages, links, and parameters. The traditional spider examines HTML responses to find links and is generally faster. The AJAX spider uses a browser to navigate JavaScript-based applications and can discover links generated dynamically.

OWASP ZAP supports two types of scanning: passive scanning and active scanning. Passive scanning examines requests and responses without modifying them and is generally considered safe. Active scanning sends test requests to identify additional vulnerabilities. Active scanning should only be performed on applications for which permission has been obtained, as it may affect the target application.

To perform an automated scan, the tester opens the Quick Start tab, selects Automated Scan, enters the target web application's URL, chooses the appropriate spider, and clicks the Attack button. ZAP then crawls the application and scans the discovered pages and parameters.

After scanning, the results are displayed in the Alerts section. The findings can be examined and classified according to severity, such as High, Medium, Low, and Informational. Appropriate remediation measures can then be recommended to fix the identified security issues.

OWASP ZAP is useful for vulnerability assessment, penetration testing, security auditing, and improving the overall security of web applications.



Procedure



Start Kali Linux and open the terminal.

Launch OWASP ZAP using the command zaproxy.

Choose whether to save the session or continue without saving.

Click the Quick Start tab in the ZAP workspace.

Click Automated Scan or Auto Scan.

Enter the complete URL of the authorized web application in the URL to attack field.

Select Use traditional spider, Use AJAX spider, or both.

Click the Attack button to start the scan.

ZAP crawls the website and scans the discovered pages and parameters.

Wait for the scan to complete.

Open the Alerts tab to view the detected vulnerabilities.

Examine the findings and classify them according to severity: High, Medium, Low, and Informational.

Suggest suitable remediation measures for the identified vulnerabilities.
Vulnerability	-------Remediation measure
SQL Injection	-------Use prepared statements.
Cross-Site Scripting (XSS)	----Validate input and encode output.
Missing Security Headers------	Configure proper security headers.
Insecure Cookies-----	Enable Secure and HttpOnly settings.
Weak Passwords----	Enforce strong password policies.
Information Disclosure----	Hide sensitive information and error messages.
