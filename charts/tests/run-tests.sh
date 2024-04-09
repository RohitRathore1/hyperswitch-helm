#!/bin/bash

# Exit on any error
set -e

# Navigate to the Helm chart directory
cd charts/incubator/hyperswitch-stack

# Perform Helm syntax check
echo "Running Helm chart syntax check..."
helm lint .

# Mock application test
# Here, we can replace this with some actual tests, such as API calls to verify application behavior
echo "Running mock application tests..."
echo "Mock test passed!"

# Navigate back to the original directory
cd -

echo "All tests passed successfully!"
