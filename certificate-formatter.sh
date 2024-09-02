#!/bin/bash

# Assuming your certificate content is in a file called 'certificate.txt'
INPUT_FILE="certificate.txt"

# Read the certificate content from the file
CERTIFICATE=$(cat "$INPUT_FILE")

# Format the certificate with headers
FORMATTED_CERTIFICATE="-----BEGIN CERTIFICATE-----\n$(echo "$CERTIFICATE" | fold -w 64)\n-----END CERTIFICATE-----"

# Print the formatted certificate to the console
echo "$FORMATTED_CERTIFICATE" 

# You can also save it to a new file if needed:
echo "$FORMATTED_CERTIFICATE" > formatted_certificate.crt 