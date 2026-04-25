# etl-lakehouse-unl-
# Pipeline ETL Lakehouse - UNL

## Descripción
Este proyecto implementa un pipeline de ingeniería de datos end-to-end bajo un enfoque Lakehouse, integrando procesos de ingesta, transformación, validación de calidad y modelado analítico.

El sistema garantiza la calidad, privacidad y disponibilidad de los datos mediante tecnologías modernas de ingeniería de datos.

---

## Arquitectura

API REST → Airflow → PostgreSQL (audit) → Spark → PostgreSQL (prod) → dbt → Analítica

---

## Tecnologías utilizadas

- Apache Airflow → Orquestación del pipeline
- Apache Spark → Procesamiento distribuido
- PostgreSQL → Almacenamiento de datos
- dbt → Modelado analítico
- Great Expectations → Validación de calidad
- Docker → Contenerización

---

## Flujo del Pipeline

1. **WRITE (Ingesta)**
   - Extracción de datos desde API REST
   - Manejo de errores con Exponential Backoff
   - Carga en esquema `audit`

2. **AUDIT (Calidad)**
   - Validación con Great Expectations
   - Detección de inconsistencias

3. **PUBLISH (Transformación)**
   - Limpieza de datos
   - Aplicación de reglas de negocio
   - Enmascaramiento de datos sensibles (PII)
   - Quality Gate (control de calidad)

4. **DBT (Modelado)**
   - Transformación en capas:
     - staging
     - intermediate
     - marts

5. **LINEAGE & MONITORING**
   - Seguimiento del flujo de datos
   - Métricas de calidad

---

## Privacidad de Datos

Se implementa enmascaramiento de información sensible (PII), cumpliendo buenas prácticas de protección de datos.

---

## Calidad de Datos

El pipeline incluye un **Quality Gate**, que:
- Detecta datos inválidos (ej: valores negativos)
- Puede bloquear o permitir el flujo según configuración
- Garantiza integridad de datos

---

## Resiliencia

Se implementa **Exponential Backoff** en la ingesta de datos:
- Manejo de errores 429 (rate limit)
- Manejo de errores 500 (servidor)
- Reintentos automáticos

---

## 📁 Estructura del Proyecto

