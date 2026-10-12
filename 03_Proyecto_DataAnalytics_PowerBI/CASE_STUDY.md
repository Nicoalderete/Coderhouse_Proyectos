# Company Sales 2019 — caso de Business Intelligence

## Problema y alcance
Proyecto académico de Coderhouse sobre ventas de artículos electrónicos durante 2019, con datos de Kaggle. La pregunta es cómo varían la facturación, los costos y la ganancia por período, producto y ciudad. No es un caso de implementación en una empresa real ni acredita mejoras comerciales medidas.

## Preparación y modelo documentados
Excel para preparación inicial; Power BI para modelado y visualización. El PDF documenta revisión de duplicados, filtrado al año 2019 y reemplazo por cero de valores faltantes de precio/cantidad. Esa última decisión debe revisarse: un cero no equivale siempre a un dato desconocido y puede afectar el análisis.

Orden_de_Compra se relaciona con Producto, Direccion y Tabla_Calendario; Categoria se conecta con Producto y Ciudad con Direccion. Relaciones 1:* y filtros unidireccionales según páginas 17–19 del PDF.

## Decisiones analíticas
Separar facturación, costos y ganancia permite distinguir volumen e ingresos de contribución económica. La tabla calendario permite segmentar el año por mes y trimestre. La navegación separa overview, facturación, ganancias y costos, con análisis por ciudad y producto.

## Resultados reportados, no recalculados
Fuente: PDF final (páginas 30–33) y capturas incluidas en el repositorio.

- Facturación total mostrada: $34.475.043.
- Ganancia mostrada: $21.427.882.
- Costo mostrado: $13.047.160.
- Q4 presenta la mayor facturación trimestral: aproximadamente $11,53 millones.

El símbolo $ reproduce la fuente; no se añade una moneda no verificada. La diferencia precio de venta menos costo por cantidad representa contribución según los costos incluidos; no debe llamarse beneficio neto sin incorporar todos los gastos.

## Interpretación
El mayor volumen reportado en Q4 orienta preguntas sobre inventario y planificación comercial. Por sí solo no prueba el efecto de promociones o Navidad. Las hipótesis de satisfacción, repetición de compra y promociones no se consideran demostradas sin campos y pruebas específicos.

## Límites y revisión técnica
El PBIX está disponible pero no se ejecutó ni se refrescó en esta revisión. Las fórmulas transcritas en el PDF contienen inconsistencias: SUM sobre un producto de columnas y ALL sobre ciudad para una métrica descrita como segmentada. Ver TECHNICAL_REVIEW.md. Las diferencias menores entre totales y sumas trimestrales requieren reconciliación en el modelo.

## Entregables
- [Archivo Power BI](./Company_Sales'19_EntregaFinal_NicolasAlderete57450.pbix)
- [Informe final](./Company_Sales'19_Entrega_Final_NicolasAlderete57450.pdf)
- [Capturas originales](./Imgs)
- [Revisión técnica](./TECHNICAL_REVIEW.md)
