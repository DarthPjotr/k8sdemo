#!/bin/bash
kubectl run -i -t busybox --image=busybox --restart=Never # -n demo
kubectl delete pod busybox
