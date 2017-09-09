- # **SENTENCIAS BASICAS DML**
## **USO DE FECHAS**

#### **Funciones que obtienen valores de fecha y hora del sistema**
###### Todos los valores de fecha y hora del sistema se derivan del sistema operativo del equipo en el que se ejecuta la instancia de SQL Server.

##### EJEMPLOS:
##### **SYSDATETIME (Transact-SQL)**
SYSDATETIME y SYSUTCDATETIME tienen más precisión de fracciones de segundo que GETDATE y GETUTCDATE. SYSDATETIMEOFFSET incluye el ajuste de zona horaria del sistema. SYSDATETIME, SYSUTCDATETIME y SYSDATETIMEOFFSET pueden asignarse a una variable de cualquier tipo de fecha y hora.
###### **A.Obtener la fecha y hora actuales del sistema**
###### SELECT SYSDATETIME() 
###### ,SYSDATETIMEOFFSET()
###### ,SYSUTCDATETIME()
###### ,CURRENT_TIMESTAMP
###### ,GETDATE()
###### ,GETUTCDATE();
###### **Que al ejecutar dichas funciones nos retornaria, por ejemplo:**
###### SYSDATETIME()      2007-04-30 13:10:02.0474381
###### SYSDATETIMEOFFSET()2007-04-30 13:10:02.0474381 -07:00
###### SYSUTCDATETIME()   2007-04-30 20:10:02.0474381
###### CURRENT_TIMESTAMP  2007-04-30 13:10:02.047
###### GETDATE()          2007-04-30 13:10:02.047
###### GETUTCDATE()       2007-04-30 20:10:02.047

###### **B.Obtener la fecha actual del sistema**
###### SELECT CONVERT (date, SYSDATETIME())
###### ,CONVERT (date, SYSDATETIMEOFFSET())
###### ,CONVERT (date, SYSUTCDATETIME())
###### ,CONVERT (date, CURRENT_TIMESTAMP)
###### ,CONVERT (date, GETDATE())
###### ,CONVERT (date, GETUTCDATE());
###### **Todo esto nos retornaria una fecha similar: 2007-04-30**

#### **SYSDATETIMEOFFSET (Transact-SQL)**
Devuelve un valor datetimeoffset(7) que contiene la fecha y hora del equipo en el que se está ejecutando la instancia de SQL Server. El ajuste de zona horaria está incluido.
SQL Server obtiene los valores de fecha y hora utilizando la API de Windows GetSystemTimeAsFileTime(). La exactitud depende del hardware del equipo y de la versión de Windows en las que la instancia de SQL Server se esté ejecutando. La precisión de esta API se fija en 100 nanosegundos. La precisión se puede determinar mediante la API de Windows GetSystemTimeAdjustment().
###### **A.Mostrar los formatos que devuelven las funciones de fecha y hora**
En el ejemplo siguiente se muestran los distintos formatos que devuelven las funciones de fecha y hora.
###### SELECT SYSDATETIME() AS SYSDATETIME
###### ,SYSDATETIMEOFFSET() AS SYSDATETIMEOFFSET
###### ,SYSUTCDATETIME() AS SYSUTCDATETIME
###### ,CURRENT_TIMESTAMP AS CURRENT_TIMESTAMP
###### ,GETDATE() AS GETDATE
###### ,GETUTCDATE() AS GETUTCDATE;
###### **El conjunto de resultados es el siguiente.**
###### SYSDATETIME() 2007-04-30 13:10:02.0474381
###### SYSDATETIMEOFFSET()2007-04-30 13:10:02.0474381 -07:00
###### SYSUTCDATETIME() 2007-04-30 20:10:02.0474381
###### CURRENT_TIMESTAMP 2007-04-30 13:10:02.047
###### GETDATE() 2007-04-30 13:10:02.047
###### GETUTCDATE() 2007-04-30 20:10:02.047
###### **B.Convertir valores de fecha y hora en date**
En el ejemplo siguiente se muestra cómo convertir valores de fecha y hora en date.
###### SELECT CONVERT (date, SYSDATETIME())
###### ,CONVERT (date, SYSDATETIMEOFFSET())
###### ,CONVERT (date, SYSUTCDATETIME())
###### ,CONVERT (date, CURRENT_TIMESTAMP)
###### ,CONVERT (date, GETDATE())
###### ,CONVERT (date, GETUTCDATE());
###### **El conjunto de resultados es el siguiente.**
###### 2007-04-30  
###### 2007-04-30  
###### 2007-04-30
###### 2007-04-30
###### 2007-04-30
###### 2007-04-30
