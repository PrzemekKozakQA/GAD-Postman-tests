#!/bin/bash
echo "Tests execution from all Postman collection files in the directory Postman_tests/ "
for file in ./Postman_tests/*; do
    newman run "$file" -e ./Postman_environments/GitHub_Actions.json -r cli,htmlextra --reporter-htmlextra-export "./newman_test_reports/$file-report.html"
done
echo "Data-driven tests execution"
newman run ./Postman_data_driven_tests/Login_negative_tests.json -d ./Postman_data_driven_tests/Login_negative_data.json -e ./Postman_environments/GitHub_Actions.json -r cli,htmlextra --reporter-htmlextra-export ./newman_test_reports/data-driven-test-report.html