#!/bin/bash 

# Kubernetes will automatically handle the rolling update for you. 
# It will gradually replace the old NGINX pods with pods running the new version, 
# ensuring that your application remains available throughout the update process.

# The first version of the application 

kubectl apply -f app-v1.yml -n josh

# The second and the updated version of the application 

kubectl apply -f app-v2.yml -n josh

# You can monitor the rolling update progress using the following command: 

kubectl rollout status deployment/nginx-deployment -n josh

# The rollout status command will show you the progress of the update.

# Congratulations, you have set up a rolling update deployment strategy using NGINX in Kubernetes! 
# This strategy ensures that updates are applied gradually to your application without causing downtime.
 
