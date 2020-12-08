# jenkins-agent-ansible

## Local build

To build it, simply execute this docker command `docker build -t jenkins-agent-ansible .`

## Openshift

To build the image on openshift, execute the following command

```bash
oc delete is,buildconfig jenkins-agent-ansible -n ci-cd
oc -n ci-cd apply -f https://raw.githubusercontent.com/ch007m/jenkins-agent-ansible/main/openshift/is.yml
oc -n ci-cd apply -f https://raw.githubusercontent.com/ch007m/jenkins-agent-ansible/main/openshift/bc.yml
oc start-build jenkins-agent-ansible -n ci-cd
```
