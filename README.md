[![GAD API tests in GitHub Actions](https://github.com/PrzemekKozakQA/GAD-Postman-tests/actions/workflows/Newman%20CLI%20with%20GAD%20from%20Docker.yml/badge.svg)](https://github.com/PrzemekKozakQA/GAD-Postman-tests/actions/workflows/Newman%20CLI%20with%20GAD%20from%20Docker.yml)

# GAD Postman Tests

This repository contains API tests in Postman for the GAD training application, available at [GAD GUI API Demo](https://github.com/jaktestowac/gad-gui-api-demo).  
Additionally, tests are run in Github Actions using Newman on a Docker container with the GAD test application.  
After each run, reports are published on GitHub Pages.

TODO - info about restore DB before each run.
TODO - Does token after change credentials expired?

## Overview

This project includes two types of tests:

- **Standard Postman Tests:** testing user login functionality.
- **Data-Driven Negative Tests:** focusing on invalid login attempts.

<u>Tests are executed automatically via GitHub Actions using Newman. Test reports are generated and published to GitHub Pages.</u>

## Test Reports

Access detailed Newman test reports from the latest run here:

- [Data-Driven Test Report](https://przemekkozakqa.github.io/GAD-Postman-tests/data-driven-test-report.html)
- [Login Tests Report](https://przemekkozakqa.github.io/GAD-Postman-tests/Postman_tests/Login_tests.json-report.html)

## Getting Started

### Prerequisites

- [Postman](https://www.postman.com/): for viewing and editing and running test collections.
- [Newman](https://github.com/postmanlabs/newman): for running tests locally.
- [GAD GUI API Demo](https://github.com/jaktestowac/gad-gui-api-demo) application running locally and accessible at "http://127.0.0.1:3000/"
- A GitHub account to clone and contribute to the repository.

### Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/PrzemekKozakQA/GAD-Postman-tests.git
   ```

2. **Install Newman (if not already installed):**
   ```bash
    npm install -g newman
   ```

### Running Tests Locally with Newman

To run the tests locally, navigate to .github\workflows\ directory and execute `run_all_tests_in_newman.sh` script:

```bash
   ./run_all_tests_in_newman.sh
```

### Running Tests Locally with Postman

Import to Postman test files:

- Postman_tests\Login_tests.json
- Postman_data_driven_tests\Login_negative_tests.json
- Postman_environments\GitHub_Actions.json

Full instructions of importing files are available in the [Postman documentation](https://learning.postman.com/docs/getting-started/importing-and-exporting/importing-data/).

Run tests in Postman as usual. For data driven tests use the file "Postman_data_driven_tests\Login_negative_data.json".  
Instructions for running the runner with test data are available in the [Postman documentation](https://learning.postman.com/docs/collections/running-collections/working-with-data-files/#run-a-collection-with-data-files).

### GitHub Actions Integration

The project is configured to automatically run tests using GitHub Actions on every push or pull request.

- The GAD application is run on Docker.
- Newman executes the tests, and the generated reports are automatically published on GitHub Pages.

## Project Structure

- **Postman Collections:** Contains the Postman test collections for user login functionality.
- **Test Scripts:** Includes scripts for data-driven negative tests.
- **GitHub Actions Workflows:** Located in the `.github/workflows` directory, these configurations manage test execution and report publication.

## Contact

https://www.linkedin.com/in/przemyslaw-kozak/
