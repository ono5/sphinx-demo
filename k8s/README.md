# K8S

## Command
prepare command

```bash
docker build -t spinx-doc .

# Docker HubにイメージをPush
# docker push hono1029/spinx-doc:tagname
docker login
docker tag spinx-doc hono1029/spinx-doc
docker push hono1029/spinx-doc
```

create command

```bash
kubectl apply -f sphinx-doc.yaml
```

delete command

```bash
kubectl delete -f sphinx-doc.yaml
```
