## DevOps Final Project 

### 📌 Project Overview:

In this project, we demonstrate the full lifecycle of deploying a JSP-based web application to a production environment using **Tomcat**, **Jenkins**, **Gatling**, and **Selenium IDE**. Our goal is to implement a CI/CD pipeline that ensures smooth deployment, monitoring, testing, and performance analysis.

---

### 🚀 Project Steps:

#### 1️⃣ Web Application Setup:

* A JSP-based application with a login form (`username`, `password`).
* The application was uploaded to GitHub for version control.

#### 2️⃣ Deployment with Jenkins:

* A Jenkins job was configured to pull the latest code from GitHub and deploy it to Tomcat under `/App2/index.jsp`.
* Tomcat is running on `http://16.16.169.2:8081` with a public IP for accessibility.

#### 3️⃣ Availability Monitoring:

* We used **UptimeRobot** to continuously monitor the application's availability.
* If the application goes down, an alert is triggered.

#### 4️⃣ Automation Testing with Selenium IDE:

* We created automated tests using Selenium IDE that verify three main functionalities:

  * ✅ Login with valid credentials.
  * ✅ Display of a welcome message upon successful login.
  * ✅ Error message upon failed login attempt.
* The tests are triggered automatically via a Jenkins job.

#### 5️⃣ Performance Testing with Gatling:

* **Max Limit Test:**

  * Aimed to identify the maximum number of concurrent users the application can handle (\~600 users).
* **Load Test:**

  * Gradual ramp-up to 450 users, maintained for 3 minutes, then gradual ramp-down.
* **Stress Test:**

  * Intense ramp-up to 600+ users to test application stability under extreme load.

---

### 🔧 Tools and Technologies:

* **JSP (Java Server Pages):** Frontend application.
* **Tomcat:** Application server for deploying JSP.
* **Jenkins:** Automated deployment and testing.
* **Git/GitHub:** Version control.
* **Gatling:** Load and stress testing.
* **Selenium IDE:** Automated UI testing.
* **UptimeRobot:** Application monitoring.

---

### 📊 Results and Analysis:

* The application successfully handled up to **600 concurrent users** under load.
* **Gatling Reports** provided clear insights into latency, throughput, and error rates.
* **Selenium Tests** confirmed the functionality remains intact even under stress.

---

### 🚀 Future Improvements:

* Scale the Jenkins pipeline to support Docker-based deployment.
* Implement Canary deployments for smoother production rollouts.
* Enhance the monitoring system with Prometheus and Grafana for real-time metrics.

---




