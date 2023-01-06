## Deployment of high availability web app infrastructure with CloudFormation
### [See web app](http://kings-WebAp-DBVQBP3PFTB7-661843850.us-east-1.elb.amazonaws.com) on Linux server
### [See web app](http://kings-WebAp-5FCPHGW6MQ9P-1057420169.us-east-1.elb.amazonaws.com) on Windows server

---
<p>This project contains:</p>
<ol>
    <li>Outputs, including the loadbalancer DNS to access the URL</li>
    <li>Infrastructure to deploy <code>Windows-Server-2022 English-Full-Base-2022.12.14</code></li>
    <li>Infrastructure to deploy <code>Ubuntu-Bionic-18.04 amd64-server-20201026</code></li>
    <li>AWS Parameter Store parameter, used to store the Instance AMIs</li>
    <li>CloudWatch Alarms to monitor CPU utilization and average cost</li>
</ol>

<p>To deploy the infrastructure, follow the steps below:</p>
<ol>
  <li>Create Parameter Store parameters to store the instance AMIs
    <ol>

 ```bash
./paramstore.sh parameterName ami-123456abcde
 ```

   </ol>
  </li>
  <li>Create network infrastructure stack
    <ol>

 ```bash
./create.sh network
 ```

   </ol>
  </li>
  <li>Create a linux server stack with "server" or a windows server stack with "win"
    <ol>

 ```bash
./create.sh win
./create.sh server
 ```

   </ol>
  </li>
  <li>Update or delete stacks with the either "server" for linux, or "win" for windows server stack
    <ol>

 ```bash
 ./update.sh server
 ./delete.sh win 
 ```

   </ol>
  </li>
  
</ol>

---

[Follow me](https://github.com/ohansck) on github

[Connect](https://linkedin.com/in/ohaneme-kingsley) with me on LinkedIn

Kindly give this repo a star if you found it's content useful