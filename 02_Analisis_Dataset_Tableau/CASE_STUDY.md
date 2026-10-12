# Sales Analysis 2019 — Tableau

## Contexto y pregunta
Proyecto académico del curso de Tableau en Coderhouse. Fuente indicada en las capturas: Kaggle, vincentcornlius/sales-orders. Explora ventas de artículos electrónicos en 2019: cómo difieren volumen, facturación y ganancia por período, ciudad y producto.

## Diseño de la exploración
La documentación describe portada, documentación, Sales Analysis, Artículos y Costos. Las capturas muestran barras mensuales y trimestrales, series temporales, comparación por ciudad, matriz producto/mes, treemap y rankings.

La matriz conserva detalle de productos y meses; los rankings permiten contrastar métricas. Las series muestran evolución dentro de 2019. Los controles visibles permiten seleccionar la métrica y el tamaño del ranking, aunque su funcionamiento no se probó en esta revisión.

## Hallazgo respaldado por la captura de Artículos
En el ranking visible, iPhone encabeza Ventas con 6.840, mientras Macbook Pro Laptop encabeza Facturado con $8.034.200 y Ganancia con $5.382.914. El ranking de volumen no coincide con el de importe, lo que justifica separar las métricas. Son valores mostrados en la captura, no recalculados ni prueba de resultados en una empresa real. La unidad de Ventas debe verificarse en el workbook.

En la vista general se reportan Facturado $34.472.415 y Ganancia $21.426.081. El símbolo $ se mantiene como en la fuente sin añadir moneda no verificada.

## Límites
El repositorio contiene README y capturas; no contiene el workbook ni la fuente tabular utilizada por Tableau. El enlace de README lleva al perfil de Tableau Public, no a una vista exacta. No se verificó el dashboard interactivo, las fórmulas, los filtros ni el refresco.

Estos importes difieren de los del proyecto Power BI. No se asume equivalencia de filtros, preparación o versión: deben reconciliarse antes de comparar ambas herramientas.

## Observaciones de calidad visual
- La captura general presenta un control con NULL: revisar origen y etiqueta antes de publicar una nueva exportación.
- En Costos, el ranking muestra 13.046.334 repetido para Diciembre, Octubre y Abril, mientras el gráfico mensual muestra importes distintos. Revisar contexto de cálculo y totales; la captura no permite identificar la causa.
- La categoría Ventas requiere definición: órdenes, filas o unidades.
- La ganancia mostrada no se llama beneficio neto sin verificar todos los costos.

## Entregables y próximos controles
[Captura general](./Imgs/1.png), [Artículos](./Imgs/2.png), [Costos](./Imgs/3.png).
[Perfil de Tableau Public indicado en la documentación](https://public.tableau.com/app/profile/nicoalderete/vizzes).

Para completar QA: localizar workbook/vista exacta, verificar controles y fórmulas, reconciliar totales, revisar NULL y ranking de costos y exportar nuevas capturas de una única versión. El dashboard original no fue modificado.
