---
slug: 01-overview

type: challenge
title: Overview
teaser: Lab overview
notes:
- type: text
  contents: |
    Let's get familure with this lab  <br>
    Please be patient as this can take up to ~15 minutes to bootstap panos

- type: text
  contents: |-
    Add information about the lab

    Panorama 
      
- type: text
  contents: |-
    Add information about the lab

    Panorama 

    <img src="https://github.com/Andrew-Klaas/instruqt-zt-lab/raw/main/assets/diagrams/0-auth.png" width=800px height=400px>

- type: text
  contents: |-
    Add information about the lab

    Panorama 

    <img src="https://github.com/Andrew-Klaas/instruqt-zt-lab/raw/main/assets/diagrams/0-auth.png" width=800px height=400px>

- type: text
  contents: |-
    DEPLOY APPSb

    Panorama 
      <img src="https://github.com/Andrew-Klaas/instruqt-zt-lab/raw/main/assets/diagrams/0-auth.png" width=800px height=400px>

- type: text
  contents: |-
  Deploy CTS

      <img src="https://github.com/Andrew-Klaas/instruqt-zt-lab/raw/main/assets/diagrams/0-auth.png" width=800px height=400px>  

tabs:
- title: NetOps - Operational Pattern
  type: website
  url: https://htmlpreview.github.io/?https://raw.githubusercontent.com/hashicorp/field-workshops-consul/master/instruqt-tracks/network-infrastructure-automation/assets/images/1.NIA-Workshop-NetOps.html
- title: NIA - Operational Pattern
  type: website
  url: https://htmlpreview.github.io/?https://raw.githubusercontent.com/hashicorp/field-workshops-consul/master/instruqt-tracks/network-infrastructure-automation/assets/images/1.NIA-Workshop-CTS.html
- title: NIA - Traffic Flow
  type: website
  url: https://htmlpreview.github.io/?https://raw.githubusercontent.com/hashicorp/field-workshops-consul/master/instruqt-tracks/network-infrastructure-automation/assets/images/1.NIA-Workshop-NetOps_Traffic.html


difficulty: basic
timelimit: 300
---
    "In this workshop, we will build the infrastructure depicted in the 'NIA - Traffic Flow' tab on the left, but before we do, let's quickly review the operational challenges we are going to address.
    ## Navigate to the "NetOps - Operational Pattern" tab.
    In this diagram we have a two-tier application running on virtual machines that use Consul for Service Discovery. New virtual machines are frequently added and removed to handle scaling requirements. The overworked NetOps and SecOps teams have to frequently reconfigure the load balancers and firewalls.
    The long hours and lengthy job queues result in deployment errors and, potentially security issues.
    ## Navigate to the "NIA - Operational Pattern" tab.
    `Consul` monitors application state changes in real-time (IP Addresses and App meta-data). `Consul Terraform Sync` uses this information to automatically configure the various network infrastructure, eliminating the need for NetOps teams to be involved after the initial configuration.
    ## Navigate to the "NIA - Traffic Flow" tab.
    In this diagram you can see the Traffic Flow of the infrastructure we are going to build in this workshop.
    NOTE: Consul Terraform Sync automates the management of policy address groups on the Palo Alto Firewalls. This facilitates having fine-grained policies without increasing operational overhead.
    In the next few challenges we are going to build this cloud environment, enabling you to see this workflow in operation."