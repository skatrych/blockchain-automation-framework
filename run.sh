#!/bin/bash
set -e

echo "Starting build process..."

echo "Adding env variables..."
export PATH=/root/bin:$PATH

#Path to k8s config file
KUBECONFIG=/home/blockchain-automation-framework/build/config

export AWS_ACCESS_KEY_ID=ASIARM37P5UZEXXWGZRO
export AWS_SECRET_ACCESS_KEY=TfjgHUTnJf/20X7jD/56ActwfubI2zmAkrBvxtvf
export AWS_SESSION_TOKEN=IQoJb3JpZ2luX2VjEF8aCWV1LXdlc3QtMSJHMEUCIQCi15lghVT/xOLcWsGlhMOlHiBXdXuFkBc6BDAlve/bZAIgH2jzt/nK2kgudm9LcMMcfJ9a9GeygrqLj+y5Y+65DUIqrgII6P//////////ARAEGgwwOTYzNjcyNzUzMTQiDF23+U+P0/F9eqp1jSqCAnykYCgaNGjFYKq/a9XW652C4YDkKeHDVLPV5Xx68loSdFCqH8vP4k6jIAPB8/OAFHpX8Tn7J117Dte8EcFvr8cdH5Epw4uD51p0/O6zqDQDgcSmD74xd47UIKrL59zWlVuJlauxwv358UkdsP4oz/UqjEiAK6Bx1YS7tD1pnIeCTbsKBiJhlXRZuuXC8bDcCGSHb6pWLk/zy7nr9iD3rVViJRESaIcNvvBIFR6XRw9XFaSD3hk3jgifCqTWo0vsY4x3+gOuMDHuiuBW09wsUevcOsYGcZMZWFq1eEsT9Nicad/fzk9L/DD82l2gnboACpyOvqJ4lIemjHiL/nJHC7aXFzDAr/iEBjqdAY0nLihMPDZgMyMpVus64mgr2xA6ssLiXaiuCb8tM2vWFc/geDtDKIvxq20Z/mSmDaV6nt/jwr7esY5E5RD8Rzb689/BW4epAaiYK62vJl2az2uh9lrzTbdbwJ1RH9jSmhHAuRKE0uzQKsCji03u+Js13He/bFHwfTHcXfHyv8irG1832VrKOfxBvjl1wqarj3f3CyFx3kyQWI13Q8c=

echo "Running the playbook..."
exec ansible-playbook -vv /home/blockchain-automation-framework/platforms/shared/configuration/site.yaml --inventory-file=/home/blockchain-automation-framework/platforms/shared/inventory/ -e "@/home/blockchain-automation-framework/build/network.yaml" -e 'ansible_python_interpreter=/usr/bin/python3'
