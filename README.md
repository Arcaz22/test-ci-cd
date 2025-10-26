# Build image
docker build -t hello-app:local .
# Jalankan container
docker run -p 8000:8000 hello-app:local

# Start cluster lokal
minikube start --driver=docker
# Load image hasil build tadi ke minikube
minikube image load hello-app:local
# Apply manifest
kubectl apply -f k8s/deploy.yaml
kubectl apply -f k8s/ingress.yaml

# Cek status
kubectl get pods
kubectl get svc

# Cek paling cepat
minikube service hello-app-svc --url

# jika pakai ingres
minikube addons enable ingress
kubectl get pods -n ingress-nginx
minikube ip
sudo nano /etc/hosts
192.168.49.2   hello.local
kubectl rollout status deploy/hello-app --timeout=120s
kubectl logs deploy/hello-app
C:\Windows\System32\drivers\etc\hosts
192.168.49.2   hello.local
minikube profile list
sudo env MINIKUBE_HOME=/home/chandra minikube -p minikube tunnel
sudo env MINIKUBE_HOME=/home/chandra KUBECONFIG=/home/chandra/.kube/config minikube -p minikube tunnel

