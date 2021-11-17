secret=$(kubectl -n kube-system get serviceaccounts default -o "jsonpath={.secrets[0].name}")
token=$(kubectl -n kube-system get secret $secret -o "jsonpath={.data.token}" | base64 --decode)
echo $token

# token=$(kubectl -n kube-system get secret | grep default-token | cut -d " " -f1)
# kubectl -n kube-system describe secret $token

# kubectl port-forward -n kube-system service/kubernetes-dashboard 10443:443

