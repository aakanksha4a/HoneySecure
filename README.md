﻿# HoneySecure
#  HoneySecure - Honeypot-Based Web Application

**HoneySecure** is a Java web application with security as its core that functions as a honeypot login system to identify and analyze malicious login activity. It mimics an actual login interface but is meant to deceive nefarious users, track their activity, and notify the admin through email in case of unauthorized attempts.

Created during **Hackathon 1.0 by Mindcoders** by Team **Honey Trappers**.

---


##  Project Overview

Web login pages are favorite targets of brute-force as well as credential-stuffing attacks in today's web world. **HoneySecure** alleviates the problem by:

- Creating a mock login mechanism
- Capturing failed attempts at login
- Issuing alerts upon 3 invalid attempts
- Redirecting the suspicious user towards an illusory homepage (`home.jsp`)
- Logging the activity stealthily for admin review

This is not a mere trap—it's also a learning and monitoring facility for actual intrusion situations.

##  How It Works

1. User opens the **`login.jsp`** page and provides credentials.
2. The **`LoginServlet`** checks the user against the database.
3. If login fails:
   - A counter is incremented in the session.
   - On **3 failed attempts**, the user is marked as suspicious.
4. Then:
   - A dummy homepage (`home.jsp`) is displayed.
   - An alert email is sent to the administrator.
- The occurrence of the event is recorded in the system.
5. Redirect on successful login (using actual credentials) to a secure page (not available for this version of honeypot).

---

##  Technologies Employed

- Java (Servlets & JSP)
- HTML, CSS, JavaScript
- MySQL (JDBC connectivity)
- JavaMail API (for email alert)
- Apache Tomcat (Web server)
- Hibernate (optional for professional DB management)
- MVC Architecture

---

##  Folder Structure

HoneySecure/ ├── src/com/honeysecure/ │ ├── controller/ # LoginServlet, etc. │ ├── model/ # User models, DB connection │ └── util/ # EmailUtility, logging helpers ├── WebContent/ │ ├── login.jsp # Login form │ ├── home.jsp # Fake page after 3 failed attempts │ └── error.jsp # Error display (optional) ├── lib/ # JavaMail and other JARs ├── README.md └── pom.xml


