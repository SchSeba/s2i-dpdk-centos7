
# Creating a basic S2I builder image  

## Getting started  

### Openshift example

```bash
oc adm new-project dpdk
oc project dpdk
oc new-app quay.io/schseba/dpdk-centos7~https://github.com/SchSeba/s2i-dpdk-centos7.git --context-dir=test/test-app
```

To re-run the build you can use

```bash
oc start-build --follow s2i-dpdk-centos7
```

### Run a s2i build locally

```bash
s2i build test/test-app/ quay.io/schseba/dpdk-centos7 sample-app
```