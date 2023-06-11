# Navidrome

Simple chart for deploy a Navidrome Instance in Kubernetes.

This chart is not maintained by the upstream project and any issues with the chart should be raised [here](https://github.com/0xEmma/helm-charts)

## Install

1) Add the Helm Repo `helm repo add 0xemma https://0xemma.github.io/helm-charts`

2) `helm install navidrome 0xemma/Navidrome`

## Configuration

Consult the offical navidrome docs for the list of envirorment variable configurations, which can be found here: [https://www.navidrome.org/docs/usage/configuration-options](https://www.navidrome.org/docs/usage/configuration-options/#available-options)

If desired, enable the ingress and change the domain name.

Under the persistence, music you can set which type of storage backend you'd like.
By default, its configured to create a new PVC, however you can uncomment the particular lines to use a hostpath, or an existing PVC

# Change Log

0.0.4 - Hostpath/existing pvc values template

0.0.3 - Fix default port typo from 4553 -> 4533

0.0.2 - Bug Fix

0.0.1 - Init
