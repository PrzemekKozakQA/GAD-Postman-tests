[![GAD API tests in GitHub Actions](https://github.com/PrzemekKozakQA/GAD-Postman-tests/actions/workflows/Newman%20CLI%20with%20GAD%20from%20Docker.yml/badge.svg)](https://github.com/PrzemekKozakQA/GAD-Postman-tests/actions/workflows/Newman%20CLI%20with%20GAD%20from%20Docker.yml)

# GAD Postman Tests

This repository was created to showcase my **API testing skills in Postman**.  
It includes automated tests for the [GAD training application](https://github.com/jaktestowac/gad-gui-api-demo), executed using **Postman, Newman, and GitHub Actions**.

## Overview

This project includes two types of tests:

- **Standard Postman Tests:** verifying user login functionality.
- **Data-Driven Negative Tests:** testing invalid login attempts.

Tests are executed on API endpoints **/login** and **/users**.
The entire Postman workspace is available at: [GAD Postman Tests Workspace](https://www.postman.com/p-k-qa/workspace/gad-postman-tests).

Tests are automatically run via **GitHub Actions** using **Newman**. The GAD application runs inside a **Docker container**, which ensures that **the database is reset to its default state** on each test run.

Test scenarios written in Gherkin are available in the **Overview** tab within folders that group related tests in Postman.

## Skills Demonstrated

This portfolio showcases various **Postman-related** skills, including:

- Using local, collection, and environment variables.
- Creating complex response validation tests, including:
  - Checking response codes and content.
  - Validating response JSON schema.
- Executing scripts stored in parent folders, ensuring all contained requests inherit common pre- and post-request logic.
- Pre-request scripting, including sending requests to create test users before test execution.

Additionally, after tests run in GitHub Actions, I generate an HTML report that is published on GitHub Pages.

## Test Reports

Access detailed **Newman test reports** from the latest run here:

- [Data-Driven Test Report](https://przemekkozakqa.github.io/GAD-Postman-tests/data-driven-test-report.html)
- [Login Tests Report](https://przemekkozakqa.github.io/GAD-Postman-tests/Postman_tests/Login_tests.json-report.html)
- [User Tests Report](https://przemekkozakqa.github.io/GAD-Postman-tests/Postman_tests/Users_tests.json-report.html)

## Known Issues in GAD Application

The tested **GAD application is continuously developed**, meaning new regression bugs may appear. Additionally, the application contains **known issues intentionally left for training purposes**.

One such known issue is the lack of data validation when updating user data using the PATCH method. This allows users to send incorrect or incomplete data, which should ideally be prevented through validation mechanisms.

## Getting Started

### Prerequisites

- [GAD GUI API Demo](https://github.com/jaktestowac/gad-gui-api-demo) running locally and accessible at `http://127.0.0.1:3000/`. Detailed information on installing and running the GAD application is available on the application [repository page](https://github.com/jaktestowac/gad-gui-api-demo).

- One of the following tools to run the tests:
  - [Workspace Postman](https://www.postman.com/p-k-qa/workspace/gad-postman-tests): running in browser.
  - [Postman desktop](https://www.postman.com/): for viewing, editing, and running test collections.
  - [Newman](https://github.com/postmanlabs/newman): CLI tool for running tests locally.

### Running Tests Locally with Postman

Import the following Postman test files:

- `Postman_tests/Login_tests.json`
- `Postman_tests/Users_tests.json`
- `Postman_data_driven_tests/Login_negative_tests.json`
- `Postman_environments/GitHub_Actions.json`

Full instructions for importing files are available in the [Postman documentation](https://learning.postman.com/docs/getting-started/importing-and-exporting/importing-data/).

Run tests in Postman as usual. For data-driven tests, use the file `Postman_data_driven_tests/Login_negative_data.json`.
Instructions for running collections with test data are available in the [Postman documentation](https://learning.postman.com/docs/collections/running-collections/working-with-data-files/#run-a-collection-with-data-files).

### Running Tests Locally with Newman

1. **Clone the Repository:**

```bash
   git clone https://github.com/PrzemekKozakQA/GAD-Postman-tests.git
```

2. **Install Newman (if not already installed):**

```bash
   npm install -g newman
```

3. **Run tests in Newman:**
   To run the tests locally, navigate to the `.github/workflows/` directory and execute the following script:

```bash
   ./run_all_tests_in_newman.sh
```

### GitHub Actions Integration

This project is configured to **automatically run tests using GitHub Actions** on every **push** or **pull request**.

- The GAD application is executed in a Docker container.
- Newman runs the tests, and the generated reports are automatically published on GitHub Pages.

## Project File Structure

- **`.github/workflows/`** – Contains GitHub Actions workflow configuration files:

  - `Newman CLI with GAD from Docker.yml` – Defines CI/CD pipeline to run tests using Newman inside a Docker container.
  - `run_all_tests_in_newman.sh` – Shell script to execute all tests using Newman.

- **`Postman_data_driven_tests/`** – Contains files for data-driven testing:

  - `Login_negative_data.json` – Test data used for invalid login attempts.
  - `Login_negative_tests.json` – Postman collection with test cases for invalid login attempts.

- **`Postman_environments/`** – Contains environment configuration files for Postman:

  - `GitHub_Actions.json` – Environment file used during CI execution in GitHub Actions.

- **`Postman_tests/`** – Contains main Postman test collections:
  - `Login_tests.json` – Test cases for user login functionality.
  - `Users_tests.json` – Test cases for user-related operations.
  - `Restore_DB.json` – Requests to reset the database state before test execution.

## Contact

[LinkedIn - Przemysław Kozak](https://www.linkedin.com/in/przemyslaw-kozak/)
