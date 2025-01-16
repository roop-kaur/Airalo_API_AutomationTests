
# **Airalo API Automation Tests**

This repository contains automated API tests for the Airalo platform. The tests are written using Postman and executed via Newman (Postman’s CLI tool). The primary focus is on validating the functionality of three API endpoints:
1. **Authorization Token**: Fetch and validate the access token.
2. **Submit Order**: Place an order and ensure correct data handling.
3. **Get Order List**: Retrieve a list of orders and validate the response.

---

## **Features**
- Automated validation of HTTP status codes and response bodies.
- Token management without hardcoding sensitive data.
- Dynamic passing of the token between requests.
- Environment management.

---

## **Getting Started**

### **Prerequisites**
1. Install [Node.js](https://nodejs.org/) (v14+ recommended).
2. Install Postman ([Download Here](https://www.postman.com/downloads/)).
3. Install Newman globally:
   ```bash
   npm install -g newman
   ```

---

### **Setup**

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/roop-kaur/Airalo_API_AutomationTests.git
   cd Airalo_API_AutomationTests
   ```
---

### **Running Tests**

1. **Insert secrets**:
   Insert client_id & client_secret in `Airalo.postman_environment.json` and save.

2. **Run All Tests Locally**:
   Execute the tests using Newman:
   ```bash
   newman run Postman/Airalo.postman_collection.json                      -e Postman/Airalo.postman_environment.json
   ```

3. **Run Tests with Script**:
   Use the provided shell script for convenience:
   ```bash
   ./run-postman-tests.sh
   ```

4. **Run in CI/CD (GitHub Actions)**:
   - Tests are automatically triggered in the pipeline on every push to the `main` branch.
   - Review the workflow in `.github/workflows/postman.yml`.

---

### **Test Cases**

| **Test Case**          | **Description**                                                                                     |
|-------------------------|-----------------------------------------------------------------------------------------------------|
| Authorization Token     | Fetches the access token and verifies the HTTP status and token format.                            |
| Submit Order            | Submits an order, passes the token dynamically, and validates the response body.                   |
| Get Order List          | Retrieves a list of orders using the token, and asserts order details, including specific order IDs.|

---

### **Folder Structure**
```plaintext
Airalo_API_AutomationTests/
├── Postman/
│   ├── Airalo.postman_collection.json   # Postman    collection
│   ├── Airalo.postman_environment.json                    # Environment template (without secrets)
├── run-postman-tests.sh                                    # Script to run tests
└── README.md                                               # Documentation
```

---

## **Managing Secrets**

To keep sensitive information secure, we can leverage some techniques like `.gitignore`, CI/CD or softwares like Vault or so. 
   
---

## **Contributing**

Contributions are welcome! To contribute:
1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature/new-feature
   ```
3. Commit your changes and push the branch:
   ```bash
   git commit -m "Add new feature"
   git push origin feature/new-feature
   ```
4. Create a Pull Request.

---



## **Contact**
For any issues or queries, please contact:
- **Roop Kaur**
- [GitHub Profile](https://github.com/roop-kaur)
