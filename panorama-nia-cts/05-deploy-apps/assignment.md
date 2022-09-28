---
slug: network-automation

type: challenge
title: deploy-apps
teaser: deploy-apps
notes:
- type: text
  contents: |
    The following challenge will get you to perform some infrastrucutre as code on your panormam device.

    <img src="https://github.com/Andrew-Klaas/instruqt-zt-lab/raw/main/assets/diagrams/0-auth.png" width=800px height=400px>

- type: text
  contents: |-
    You will configure 

    1. Device Stack
    2. Security policies
    3. NAT Policies
    4. Address Groups

    Panorama 
      <img src="https://github.com/Andrew-Klaas/instruqt-zt-lab/raw/main/assets/diagrams/0-auth.png" width=800px height=400px>

tabs:
- title: Current Lab Setup
  type: website
  url: https://htmlpreview.github.io/?https://raw.githubusercontent.com/hashicorp/field-workshops-consul/pan-azure-nia/instruqt-tracks/pan-azure-network-infrastructure-automation/assets/images/mainimage.html
- title: Terraform Code
  type: code
  hostname: workstation
  path: /root/terraform/
- title: Shell
  type: terminal
  hostname: workstation
- title: Cloud Consoles
  type: service
  hostname: workstation
  path: /
  port: 80
  difficulty: basic
  timelimit: 600

difficulty: basic
timelimit: 300
---
    panorama config  

    