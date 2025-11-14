# 🔥 DevOps Boilerplate Framework

### _Framework DevOps adaptado al desarrollo y entrega de software en una PyME de consultoría en seguridad contra incendios_

Este repositorio contiene un **boilerplate DevOps completo**, diseñado como parte de una tesis orientada a aplicar prácticas modernas de DevOps dentro del contexto de una **PyME especializada en consultoría en seguridad contra incendios**.

El objetivo es proporcionar un **marco estandarizado, simple y escalable**, que permita a equipos pequeños:

-   mejorar su flujo de desarrollo,
-   reducir errores en despliegues,
-   automatizar tareas repetitivas,
-   asegurar trazabilidad y control,
-   y optimizar la entrega continua del software.

---

## 📦 Contenido del Framework

Este repositorio incluye las piezas esenciales para implementar DevOps en cualquier proyecto software dentro de una PyME:

.github/workflows/ → Integración Continua (CI) y Entrega Continua (CD)
docker/ → Estandarización de entornos mediante contenedores
scripts/ → Automatización de procesos clave
terraform/ → Infraestructura como código (IaC)
Makefile → Comandos simplificados para el equipo

Cada una de estas partes está optimizada para organizaciones pequeñas: **menos complejidad, más impacto**.

---

# 🚀 Cómo sacar el máximo provecho del Framework

Este boilerplate está pensado para servir como **punto de partida** para cualquier proyecto de software dentro de la organización.

A continuación se explica cómo usarlo estratégicamente.

---

## 🧪 1. Integración Continua (CI)

Ubicado en:  
`.github/workflows/ci.yml`  
`.github/workflows/lint-test.yml`

**Propósito**  
Garantizar que _todo cambio de código_ cumpla estándares mínimos antes de integrarse.

**Ventajas para una PyME**

-   Detecta errores antes de llegar a producción.
-   Aumenta confiabilidad del software entregado al cliente.
-   Facilita la colaboración entre desarrolladores.

**Incluye:**  
✔ Linting  
✔ Testing  
✔ Auditoría de vulnerabilidades  
✔ Construcción de imagen Docker

Los pipelines se ejecutan automáticamente en cada `push` o _pull request_.

---

## 🚢 2. Entrega Continua (CD)

Ubicado en: `.github/workflows/cd.yml`

**Propósito**  
Automatizar despliegues en servidores de manera controlada y repetible.

**Ventajas para la PyME**

-   Reduce tiempos muertos.
-   Minimiza errores humanos.
-   Permite entregas frecuentes y seguras.

**Flujo:**

1. Construcción de la imagen Docker
2. Publicación en Docker Hub
3. Despliegue automático por SSH en el servidor remoto

---

## 🐳 3. Dockerización del proyecto

Ubicado en: `docker/`

Incluye:

-   Dockerfile para Node.js
-   Dockerfile para Python
-   docker-compose para entornos locales

**Beneficios:**

-   Entornos reproducibles
-   Aislamiento de dependencias
-   Simplifica despliegues
-   Facilita migración a servidores o cloud

**Comando local:**  
make up

---

## ☁️ 4. Infraestructura como Código (IaC)

Ubicado en: `terraform/`

Incluye lo esencial para desplegar en AWS ECS/ECR.

**Por qué es útil en tu PyME:**

-   Documentación automática de la infraestructura
-   Eliminación de configuraciones manuales riesgosas
-   Despliegues reproducibles
-   Facilita escalar servicios

---

## 🔧 5. Scripts de Automatización

Ubicados en: `scripts/`

Incluyen:

-   `setup.sh` → Preparación del entorno
-   `deploy.sh` → Despliegue simplificado
-   `cleanup.sh` → Mantenimiento de contenedores Docker

Esto reduce carga operativa y elimina tareas repetitivas.

---

## 🛠 6. Makefile

Permite ejecutar procesos de forma uniforme sin recordar comandos largos.

Ejemplos:
make build → Construir imagen
make test → Ejecutar tests
make deploy → Deploy completo
make up → Levantar entorno local

Ideal para equipos con diferentes niveles técnicos.

---

# 🔧 Cómo empezar

1. **Clonar el repositorio**
   git clone <url>

2. **Crear archivo de variables**
   cp .env.example .env

3. **Levantar el entorno local**
   make up

4. **Subir un commit y ver CI ejecutarse automáticamente**

5. **Configurar secretos en GitHub (Actions → Secrets):**

-   `DOCKERHUB_USERNAME`
-   `DOCKERHUB_TOKEN`
-   `SERVER_IP`
-   `SERVER_USER`
-   `SERVER_SSH_KEY`

---

# 🧭 Guía conceptual: por qué este framework funciona

Este framework fue diseñado específicamente para:

✔ PyMEs con recursos limitados  
✔ Equipos pequeños donde la simplicidad es clave  
✔ Proyectos donde la confiabilidad es prioritaria  
✔ Entornos con alto costo por errores (seguridad contra incendios)  
✔ Necesidad de estandarización sin sobrecargar al equipo

El objetivo no es solo “tener DevOps”, sino **tener DevOps que una PyME pueda mantener y aprovechar**.

Este boilerplate busca:

-   automatizar lo que aporta valor,
-   favorecer simplicidad sobre complejidad innecesaria,
-   ofrecer herramientas modernas pero accesibles.

---

# 📄 Estructura del Proyecto

BOILER-PLATE/
├── docker/ # Contenedores y entornos reproducibles
├── scripts/ # Automatización del flujo DevOps
├── terraform/ # Infraestructura como código
├── .github/workflows/ # Pipelines CI/CD
├── Makefile # Comandos simplificados
└── .env.example # Configuraciones base
