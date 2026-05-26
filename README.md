# Chicken Disease Classification

A Deep Learning-based image classification project that detects chicken diseases from images using CNN. The project includes model training, experiment tracking, data versioning, and deployment pipelines.

## Features
- Chicken disease image classification
- CNN-based deep learning model
- DVC pipeline for workflow management
- MLflow experiment tracking
- Flask web app deployment
- CI/CD integration

## Workflow
1. Update `config.yaml`
2. Update `params.yaml`
3. Update components and pipeline
4. Run training pipeline
5. Deploy application

## Installation

Clone the repository:

```bash
git clone https://github.com/your-username/Chicken-Disease-Classification.git
cd Chicken-Disease-Classification
```

Create environment:

```bash
conda create -n cnncls python=3.8 -y
conda activate cnncls
```

Install dependencies:

```bash
pip install -r requirements.txt
```

## Run Application

```bash
python app.py
```

Open in browser:

```bash
http://localhost:5000
```

## DVC Commands

```bash
dvc init
dvc repro
dvc dag
```

## Tech Stack
- Python
- TensorFlow / Keras
- Flask
- DVC
- MLflow
- Docker
- GitHub Actions

## Deployment
Supports:
- Render
- Docker-based deployment

## Project Structure
- `src/` → source code
- `config/` → configuration files
- `pipeline/` → training pipeline
- `app.py` → Flask app
- `dvc.yaml` → workflow pipeline

## Author
Pradip Mane