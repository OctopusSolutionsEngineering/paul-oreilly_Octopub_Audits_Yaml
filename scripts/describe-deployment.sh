deployment=$(get_octopusvariable "Project.Deployment.Name")
kubectl describe deployment $deployment > $PWD/deployment.txt

new_octopusartifact $PWD/deployment.txt deployment.txt

cat $PWD/deployment.txt