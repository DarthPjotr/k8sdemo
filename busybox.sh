#!/bin/bash
kubectl run -i -t busybox --image=busybox --restart=Never
kubectl delete pod busybox
