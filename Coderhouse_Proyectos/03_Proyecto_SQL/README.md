# Proyecto: Finanzas Personales y Presupuesto

## Descripción
Este proyecto fue desarrollado como parte del curso de SQL en Coderhouse. El objetivo principal es gestionar y analizar las finanzas personales de los usuarios, permitiendo el registro de ingresos, gastos, inversiones y deudas para ofrecer un control detallado de la situación financiera y facilitar la planificación de presupuestos.

## Objetivo
El sistema tiene como finalidad proporcionar a los usuarios una herramienta para gestionar eficientemente sus finanzas personales. Esto incluye el seguimiento de ingresos, gastos, inversiones y deudas, y ayuda a la toma de decisiones financieras informadas mediante informes detallados y análisis predictivos.

## Estructura del Proyecto
El proyecto se estructura de la siguiente manera:

### 1. Modelo de Negocio
   - La base de datos está diseñada para ofrecer una solución robusta y fácil de utilizar para la gestión de finanzas personales, con funcionalidades como registro y análisis de transacciones, generación de informes detallados, y alertas automáticas.

### 2. Tablas y Tipos de Datos
   - Se han creado varias tablas en la base de datos para almacenar información sobre usuarios, gastos, ingresos, inversiones, deudas, presupuestos, ahorros, productos, proveedores, compras, pagos, transacciones recurrentes, historial financiero, eventos financieros, y metas financieras.

### 3. Vistas
   - Se han implementado vistas que permiten a los usuarios visualizar rápidamente resúmenes de sus actividades financieras, como gastos por categoría, comparativa de ingresos y gastos, deudas pendientes, ahorros, y un resumen anual de actividades.

### 4. Funciones
   - Se han desarrollado funciones personalizadas como `TotalGastosMes`, `VerificarPresupuesto`, `TotalIngresosAnuales`, y `SaldoActual` para calcular y verificar diferentes aspectos financieros de los usuarios.

### 5. Stored Procedures
   - Los procedimientos almacenados (`Stored Procedures`) como `AgregarGasto` y `ActualizarDeuda` facilitan la entrada de datos y la actualización de información crítica en la base de datos, garantizando la integridad y seguridad de la información.

### 6. Triggers
   - Se han creado triggers para automatizar ciertas acciones, como la actualización automática del saldo de ahorros cuando se realiza un gasto (`ActualizarSaldoAhorros`) y la notificación a los usuarios cuando exceden su presupuesto (`NotificarSobrepasoPresupuesto`).

## Conclusión
El proyecto "Finanzas Personales y Presupuesto" cumple con su objetivo de facilitar la gestión de las finanzas personales, proporcionando a los usuarios herramientas para un control exhaustivo y la toma de decisiones informadas. Además, el sistema está diseñado para ser escalable y adaptable a futuras mejoras.

## Herramientas Utilizadas
- **MySQL**: Para la creación, gestión y mantenimiento de la base de datos.
- **Microsoft Word**: Utilizado para la redacción de la documentación del proyecto.
- **PDF**: Para la distribución y presentación de la documentación.
- **Tableau**: Para la creación de dashboards y reportes interactivos basados en los datos.

## Documentación
Puedes consultar la documentación completa del proyecto en el archivo PDF adjunto: [ProyectoFinanzasypresupuesto_EntregaFinal_Com53190.pdf](./ProyectoFinanzasypresupuesto_EntregaFinal_Com53190.pdf)

## Autor
**Nicolás Alderete**  
**Comisión:** 53190 - SQL  
**Fecha:** 

