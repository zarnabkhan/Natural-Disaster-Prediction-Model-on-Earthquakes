# Natural Disaster Prediction Model on Earthquakes

A machine learning-based earthquake prediction model developed as a Bachelor's Final Year Project (FYP), using seismic features, feature selection, Support Vector Regression (SVR), a Hybrid Neural Network (HNN), and Evolutionary Particle Swarm Optimization (EPSO).

## Project Overview

This project focuses on earthquake prediction using a computational-intelligence approach applied to historical earthquake data.

The original project works with earthquake datasets from three regions:

* **Chile**
* **Hindukush**
* **Southern California**

The MATLAB implementation uses **60 seismic features** derived from previous seismic events. A magnitude threshold of **5** is used to generate binary output labels for the prediction task.

### Processing Pipeline

```text
Earthquake Data
       ↓
Feature Selection
       ↓
Support Vector Regression (SVR)
       ↓
Hybrid Neural Network (HNN)
       ↓
Evolutionary Particle Swarm Optimization (EPSO)
       ↓
Prediction / Classification Results
```

The implementation in this repository is intentionally kept close to the original FYP code rather than being rewritten using modern machine-learning APIs. This repository is intended to preserve and document the original academic project implementation.

---

## Technologies and Methods

* **MATLAB**
* **Support Vector Regression (SVR)**
* **Hybrid Neural Network (HNN)**
* **Evolutionary Particle Swarm Optimization (EPSO)**
* **mRMR-based feature selection**
* **LIBSVM MATLAB interface**
* Historical seismic datasets

---

## Repository Structure

```text
Natural-Disaster-Prediction-Earthquakes/
│
├── README.md
│
├── src/
│   ├── HNN.m
│   ├── EPSO.m
│   ├── UseSVR.m
│   ├── UseNN.m
│   ├── UseEPSO.m
│   ├── irrel_filter.m
│   ├── redund_filter.m
│   ├── Output_Label.m
│   ├── Contingency_Table.m
│   └── OF.m
│
├── data/
│   ├── Chile,n
```
