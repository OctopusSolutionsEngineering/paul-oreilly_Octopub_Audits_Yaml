component=$(get_octopusvariable "Project.Labels.Component")
kubectl describe pod -l component=$component > $PWD/pod.txt

new_octopusartifact $PWD/pod.txt pod.txt

cat $PWD/pod.txt