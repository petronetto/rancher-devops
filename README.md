# rancher-devops
<p align="center">
	<img width="70%" src="https://cdn.rawgit.com/cristiancmello/art/master/rancher-devops-banner.png"/>
</p>
<p align="center">A tool for devops with Rancher Server.</p>

## Prerequisites
* Ubuntu 16.04.02 LTS;
* Docker 1.12.3 for Kubernetes support (run `curl https://releases.rancher.com/install-docker/1.12.sh | sh
` to install);
* Docker 1.12.3 (or higher) for other environments
* jq json parser (run `sudo apt install -y jq` to install)

## Usage
* Run environment:
```bash
rancher-devops <environment>
```

* Example to start the Kubernetes Cluster:
```bash
rancher-devops kubernetes
```

## List of supported environments/orchestrators
* Cattle (environment: `dev`);
* Kubernetes (environment: `kubernetes`);
