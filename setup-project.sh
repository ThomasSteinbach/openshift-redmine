oc new-project redmine || oc project redmine
sudo oc login -u system:admin
sudo oc adm policy add-scc-to-user anyuid -z default -n redmine
oc new-app -f secret-template.yaml
oc-apply
