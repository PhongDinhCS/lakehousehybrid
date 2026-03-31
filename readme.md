Please see for more detail at:

- English: Computer Science - Master Thesis _ Healthcare Data Lakehouse on Hybrid Cloud - On Premise presentation:
  
https://github.com/PhongDinhCS/lakehousehybrid/blob/main/English_Phongdt%20Master%20Thesis%20Healthcare%20Data%20Lakehouse%20on%20Hybrid%20Cloud%20presentation.pdf


- Vietnamese: Computer Science - Master Thesis _ Healthcare Data Lakehouse on Hybrid Cloud - On Premise docs:
  
https://github.com/PhongDinhCS/lakehousehybrid/blob/main/B%C3%A1o%20c%C3%A1o%20lu%E1%BA%ADn%20v%C4%83n%20_%C4%90inh%20Thanh%20Phong_2270273_print_260108.pdf

---

# 🏥 Healthcare Data Lakehouse on Hybrid Cloud - On Premise

## 📘 Master's Thesis

**Title:** Building a Data Lakehouse Model on Hybrid Cloud for Healthcare Big Data
**Student:** Đinh Thanh Phong (2270243)
**University:** Ho Chi Minh City University of Technology
**Supervisors:**

* PGS.TS Thoại Nam
* TS. Nguyễn Lê Duy Lai

---

## 📌 Overview

This thesis proposes a **Hybrid Cloud Data Lakehouse architecture** designed for:

* Storage and processing of healthcare big data
* Supporting both **real-time** and **batch data pipelines**
* Ensuring **data security, sovereignty, and compliance with Vietnamese regulations**

---

## 🎯 Objectives

* Handle **large-scale healthcare data storage**
* Process **real-time (ECG)** and **batch (MRI)** data
* Build a **Data Lakehouse architecture (Bronze – Silver – Gold)**
* Enable **data sharing for research** while maintaining privacy
* Evaluate **performance and security**

---

## 🌏 Research Context & Motivation

* Vietnamese law requires:

  * Long-term healthcare data storage (10+ years)
  * Strict control over cross-border data transfer
* Hospitals need:

  * Digital transformation & interoperability
  * Centralized storage before device data is overwritten
* Increasing demand for:

  * Machine Learning in healthcare
  * Standardized and secure data systems

---

## ❗ Problem Statement

* ICU system (20 beds) generates continuous **ECG real-time data**
* MRI data collected as **batch imaging data**
* Challenges:

  * Data heterogeneity (structured + unstructured)
  * Storage limitations on medical devices
  * Need for secure sharing with international organizations

---

## 📚 Related Work

Key studies include:

* Lakehouse architecture (Armbrust et al., 2021)
* Hybrid cloud security for sensitive data
* Big Data Analytics in healthcare
* AI frameworks for medical imaging (PACS-AI)

---

## 📊 Dataset

### ECG Dataset

* Source: https://physionet.org/content/ecgiddb/1.0.0/
* 90 subjects
* 500Hz sampling rate
* Includes:

  * Raw signals (.dat)
  * Metadata (.hea)
  * Annotations (.atr)

### MRI Dataset

* Source: https://data.mendeley.com/datasets/k57fr854j2/2
* 515 patients
* 48,345 MRI slices
* Format: DICOM (.ima)
* Planes: Sagittal & Axial

---

## 🏗️ Architecture

### Hybrid Cloud + On-Premise Model

* **On-Premise**

  * Stores raw sensitive healthcare data
  * Ensures compliance and data sovereignty

* **Cloud (Databricks)**

  * Stores processed & anonymized data
  * Supports analytics & AI

### Medallion Architecture

* 🥉 Bronze: Raw data (MinIO)
* 🥈 Silver: Cleaned & structured data (Delta Lake)
* 🥇 Gold: Analytics-ready data (Cloud)

---

## ⚡ Real-Time Pipeline (ECG)

1. ECG devices → MQTT (publish-subscribe)
2. Apache NiFi:

   * Data ingestion
   * Schema normalization
3. MinIO (Bronze layer)
4. Apache Spark Structured Streaming:

   * Data processing → Silver layer
5. Anonymization + API → Databricks (Gold layer)

---

## 📦 Batch Pipeline (MRI)

1. MRI stored as DICOM in hospital system
2. Apache Airflow:

   * Detect new data
   * Ingest to Bronze (MinIO)
3. Apache Spark:

   * Extract metadata
   * Transform → Silver layer
4. Databricks API:

   * Upload processed data → Gold layer

---

## 📈 Results & Evaluation

### ECG Pipeline

* ✅ 100% data integrity (no loss)
* ~200,000 records processed
* Latency:

  * 1 device: ~30 seconds
  * 20 devices: ~3 minutes

### MRI Pipeline

* ✅ 100% ingestion success
* 300 DICOM files processed
* Total processing time: ~30 minutes

---

## 🔐 Key Contributions

* Hybrid architecture ensuring:

  * Security
  * Legal compliance
  * Data sovereignty
* Unified pipeline for:

  * Real-time (ECG)
  * Batch (MRI)
* Implementation of:

  * Data governance
  * Traceability
  * Data quality control
* Open-source contribution:
  👉 https://github.com/PhongDinhCS/lakehousehybrid

---

## ⚠️ Limitations

* Tested on simulated scale
* No full evaluation of:

  * Operational cost
  * Large hospital integration

---

## 🚀 Future Work

* Scale system to production level
* Integrate AI for ECG & MRI analysis
* Improve metadata management
* Enhance real-time monitoring
* Study Vietnamese healthcare data regulations deeper

---

## 📖 References

Includes key works on:

* Data Lakehouse architecture
* Hybrid cloud systems
* Healthcare big data analytics
* AI in medical imaging

(See full thesis for detailed references)

---

## 🙏 Acknowledgment

I sincerely thank my supervisors and lecturers for their support and guidance throughout this research.

---
