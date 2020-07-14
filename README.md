# code-server

```
# this is not ideal, and will be removed the moment the image will stop run as root user
oc adm policy add-scc-to-user anyuid -z default # run this when the current openshift project is checked out

oc new-app --strategy docker  --name code https://github.com/paoloantinori/code-server 
oc expose svc/code

# not all the extensions are available on the official catalog.
# extra ones have been added to the image but they need to be manually installed in VSCode, 
# like you would normally install a .vsix file
```
