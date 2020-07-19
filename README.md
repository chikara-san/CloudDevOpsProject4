[![misenli](https://circleci.com/gh/misenli/CloudDevOpsProject4.svg?style=svg)](https://app.circleci.com/pipelines/github/misenli/CloudDevOpsProject4/4/workflows/33f636fc-fdb7-4a45-bc0f-d88cda4782a6)

# Cloud DevOps Engineer Nanodegree - Operationalize a Machine Learning Microservice API

## Summary of the project

This is a project to provide API to predict housing prices in Boston. 
The API uses `sklearn` inside and the pretrained model and [data](https://www.kaggle.com/c/boston-housing). 

## Project Tasks

### Setup the Environment

* Create a virtualenv and activate it
```bash
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```
* Run `make install` to install the necessary dependencies
```bash
make install
```

### Kubernetes Steps (Optional)

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Testing `app.py`
The application recieve your request via port 8000 in local. 
To test you can use make_prediction.sh in the project root directory.  
```bash
./make_prediction.sh
```

## Files

```text

    .circleci/config.yml: Testing pipeline
    Dockerfile: Docker image build definition
    Makefile: Utility automatically build and test with lint
    app.py: The application flask program
    housing.csv: housing data
    make_prediction.sh: Run the API call to generate a prediciton
    model_data/boston_housing_prediction.joblib: Pretrained sklearn model
    output_txt_files/docker_out.txt: Output from running docker
    output_txt_files/kubernetes_out.txt Output from running kubernates
    requirements.txt: The prerequisites of Python packages 
    run_docker.sh: Run image building and boot process of the application
    run_kubernetes.sh: Run the kubernetes deployment
    upload_docker.sh: Upload the Docker image to my DockerHub


```