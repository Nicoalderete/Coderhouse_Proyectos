# Revisión técnica de documentación

Esta revisión compara README, PDF final y capturas. No modifica ni verifica la ejecución del PBIX.

## 1. Facturación
El PDF escribe SUM(Precio_venta * Cant_orden). Para una expresión evaluada fila a fila, la propuesta es:

```dax
Facturacion = SUMX(
    Orden_de_Compra,
    Orden_de_Compra[Precio_venta] * Orden_de_Compra[Cant_orden]
)
```

Propuesta de corrección documental; pendiente de contrastar con la medida real del PBIX.

## 2. Segmentación por ciudad
La fórmula del PDF usa ALL(Ciudad[Ciudad_ID]), que elimina ese filtro. Para comparar ciudades, usar la medida base en el contexto de Ciudad y confirmar propagación Ciudad → Direccion → Orden_de_Compra. ALL solo corresponde si se desea un total de referencia independiente de ciudad.

## 3. Definiciones
COUNT(Nro_articulo) cuenta filas no vacías, no necesariamente órdenes únicas ni unidades. SUM(Cant_orden) cuenta unidades. Un conteo de órdenes necesita un identificador y DISTINCTCOUNT acorde con la granularidad. Revisar etiquetas del dashboard.

## 4. Calidad de datos
Reemplazar precios/cantidades faltantes por cero requiere justificación y registro del número de filas afectadas. Comparar resultados con filas excluidas o clasificadas como incompletas.

## 5. Reconciliación
Los importes publicados tienen pequeñas diferencias: facturación menos costo difiere en $1 de la ganancia mostrada, y sumas trimestrales no coinciden exactamente con los totales del PDF. Revisar precisión, redondeos, filtros y versión de capturas; no asumir una causa sin ejecutar el modelo.

## Validación pendiente en Power BI
1. Abrir PBIX y revisar disponibilidad de fuentes.
2. Confirmar granularidad y claves únicas de dimensiones.
3. Comparar medidas reales con documentación.
4. Reconciliar total anual, suma por mes y suma por trimestre con la misma precisión.
5. Verificar que filtros de ciudad/producto afecten las métricas esperadas.
6. Exportar capturas e informe de la misma versión.

El archivo original se conserva.
