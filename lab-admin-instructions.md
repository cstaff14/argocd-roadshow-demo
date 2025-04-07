# Instructions for administrators
1. When starting from the regular OCPV roadshow environment you must create a gitops namespace for each user and label them all to allow the openshift-gitops namespace to manage them
2. Create a user group that contains all the lab users that has admin rights to the `openshift-gitops` namespace
3. Give role:admin to this group [Argocd RBAC Docs](https://docs.redhat.com/en/documentation/openshift_container_platform/4.10/html/cicd/gitops#configuring-user-level-access_configuring-argo-cd-rbac)
