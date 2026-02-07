apiVersion: eksctl.io/v1alpha5
kind: ClusterConfig

metadata:
    name: roboshop-dev
    region: us-east-1
managedNodeGroups:
  - name: roboshop-dev
    instanceTypes: ["m5.large","t3.small",""]