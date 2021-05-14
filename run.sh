#!/bin/bash
set -e

echo "Starting build process..."

echo "Adding env variables..."
export PATH=/root/bin:$PATH

#Path to k8s config file
KUBECONFIG=/home/blockchain-automation-framework/build/config

export AWS_ACCESS_KEY_ID=ASIARM37P5UZINYIRBP6
export AWS_SECRET_ACCESS_KEY=pzwwMgBuMUQPRCPxRWRJNgQe3rQmTOPdc51w7zNX
export AWS_SESSION_TOKEN=IQoJb3JpZ2luX2VjEF8aCWV1LXdlc3QtMSJHMEUCIFyP5jMK6oNKnQbjPSKkrY7ZuhDI6CWuKv+Qras33JGJAiEA9XPYxZJKp66E+attgfa4RbNJ5Oa0txupu4V5HnMiO4MqrgII6P//////////ARAEGgwwOTYzNjcyNzUzMTQiDK74X61o/TrpmGnTOSqCAi3GrV5nU0hS4yiH1F4C2PzwsdkEuE7SZM/oKfIMYidWiQ89EHxraJkB857gejrLViG/uZevKS9FtsTp0+zx4gIgJYnRgQRzAD2uoLX3R/bREQLHQIvIo8g3lIaMSaqmFiTighIxn9wOTaaeB1vrTPbOMgz+b7+VDbiovnOohb6UnzpnF+Zcn/6b0zZZqH7DtP1a3uh31ChCRiJ7J5C36VjrygCtbfKWyG9gMmy4/XJbiKroWvsSnb+ohTq5k9zXm7a4WCcy3COU3pp90Hlifq6horpPPJAGn209s4KW/fbyKFxDPuzeLynrDjHBLoK7gReRWJAudDUwsIFM2HQzRiYfPjCDxPiEBjqdARnthMqsOetFVsglE8I+g1wgbcvuFEKJXMxBh+naWIRLjsCOIx2B1U7xqjbo2qE/EbHacr/RW/Jf8ez90P7DlMj8aVRN2M6qPdApiL1c5VbbSchcXVHYdxvvTRWyKcWxSyzgcj+fbv4OPTvyf5ci1RYDxxEUSap3cbBInSvC6mIxXcbqMYe2ESGUkwqQg7fRr1gL2+jVFRI31YosDj4=

echo "Running the playbook..."
exec ansible-playbook -vv /home/blockchain-automation-framework/platforms/shared/configuration/site.yaml --inventory-file=/home/blockchain-automation-framework/platforms/shared/inventory/ -e "@/home/blockchain-automation-framework/build/network.yaml" -e 'ansible_python_interpreter=/usr/bin/python3'
