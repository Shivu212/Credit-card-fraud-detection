# 🛡️ FraudShield AI - Enterprise Credit Card Fraud Detection Platform

FraudShield AI is an industry-level, production-ready **Credit Card Fraud Detection & Real-Time Threat Intelligence Platform** built with **FastAPI**, **XGBoost & RandomForest Ensembles**, **Explainable AI (XAI)**, and a modern **React (Vite)** glassmorphism web interface.

![Fraud Detection Architecture](https://img.shields.io/badge/Architecture-FastAPI%20%7C%20React%20%7C%20XGBoost%20%7C%20PostgreSQL-blue)
![Python](https://img.shields.io/badge/Python-3.12-green)
![React](https://img.shields.io/badge/React-18-cyan)
![Accuracy](https://img.shields.io/badge/Model%20ROC--AUC-100%25-emerald)

---

## 🚀 Key Features

- **⚡ Real-Time Machine Learning Inference Engine**:
  - Ensemble of **XGBoost Classifier** and **RandomForest Classifier** with calibrated probability scoring (0 to 100 Risk Index).
  - Handles class imbalance using weighted logloss and resampled synthetic benchmark distributions (PCA features V1–V28, Amount, Velocity, Distance).
  
- **💡 Explainable AI (XAI) Attribution**:
  - Provides per-transaction risk signal explanations (e.g. Card Not Present online velocity spikes, location distance anomalies, PCA latent feature shifts).

- **📊 Modern Executive Analytics & Dashboard**:
  - Interactive KPI summaries: Fraud Loss Blocked ($), Overall Fraud Rate %, Total Volume, High Risk Alert Ratio.
  - Recharts 24-hour volume trend & fraud spike charts, Risk Tier Donut Distribution, and Category Risk Breakdown.

- **📁 Batch CSV File Scanner**:
  - Drag-and-drop CSV parser supporting high-volume parallel batch row predictions with CSV results export.

- **📜 Transaction Ledger & Analyst Workflows**:
  - Searchable transaction log with filters for Risk Tier, Status, Category, and Date.
  - Review Drawer Modal allowing fraud analysts to mark transactions as *Verified (Legit)* or *Confirmed Fraud*.

- **🔐 Enterprise Security & Auth**:
  - JWT Bearer Token Authentication, bcrypt password hashing, and role-based access control (`admin`, `analyst`).

---

## 🛠️ Technology Stack

| Layer | Technologies |
| :--- | :--- |
| **Frontend** | React (Vite), Lucide Icons, Recharts, Axios, Glassmorphism UI |
| **Backend** | Python 3.12, FastAPI, Uvicorn, Pydantic, SQLAlchemy ORM |
| **Machine Learning** | Scikit-learn, XGBoost, RobustScaler, Joblib, Synthetic Benchmarks |
| **Database** | SQLite (Default for instant zero-config startup) / PostgreSQL |
| **Deployment** | Docker, Docker Compose, Nginx |

---

## ⚡ Quick Start Instructions

### 1. Direct Local Launch

#### Backend Setup
```bash
cd backend
python -m venv venv
# On Windows:
.\venv\Scripts\activate
# On Linux/macOS:
source venv/bin/activate

pip install -r requirements.txt
python -m app.ml.train
python -m uvicorn app.main:app --host 0.0.0.0 --port 8000
```
Backend API interactive documentation is available at: [http://localhost:8000/docs](http://localhost:8000/docs)

#### Frontend Setup
```bash
cd frontend
npm install
npm run dev
```
Frontend Web Terminal will be live at: [http://localhost:5173/](http://localhost:5173/)

---

### 🔑 Default Credentials

- **Admin Account**: `admin` / `Admin@123456`
- **Instant Demo Login**: Click **"Log In as Demo Admin"** on the Sign In page for one-click access.

---

## 🐳 Docker Deployment

To launch the full production environment (PostgreSQL + FastAPI + Nginx React Frontend):

```bash
docker-compose up --build
```
- Web Application: `http://localhost:80`
- FastAPI Backend API: `http://localhost:8000`

---

## 📌 API Reference

- `POST /api/auth/login`: Authenticate and receive JWT access token.
- `POST /api/predict/single`: Real-time transaction fraud inference and XAI breakdown.
- `POST /api/predict/batch`: Async CSV batch transaction processing.
- `GET /api/transactions`: Transaction audit ledger with pagination & filter parameters.
- `PATCH /api/transactions/{id}/status`: Analyst status update (Verified, Fraud, Cleared).
- `GET /api/analytics/summary`: Executive overview KPI metrics.
- `GET /api/model/info`: Current ML model metrics, confusion matrix & feature importances.
- `POST /api/model/retrain`: Trigger model re-training on updated transaction data.

---

## 📄 License
This project is released under the MIT License.
