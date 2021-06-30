#! /bin/bash
kubectl port-forward pods/nginx-pod 30085:80
# curl 127.0.0.1:30085
