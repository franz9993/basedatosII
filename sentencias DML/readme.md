# **SENTENCIAS BASICAS DML**
## **USO DE FECHAS**

#### **Funciones que obtienen valores de fecha y hora del sistema**
###### Todos los valores de fecha y hora del sistema se derivan del sistema operativo del equipo en el que se ejecuta la instancia de SQL Server.

###### **EJEMPLOS:**
###### **SYSDATETIME (Transact-SQL)**
SYSDATETIME y SYSUTCDATETIME tienen más precisión de fracciones de segundo que GETDATE y GETUTCDATE. SYSDATETIMEOFFSET incluye el ajuste de zona horaria del sistema. SYSDATETIME, SYSUTCDATETIME y SYSDATETIMEOFFSET pueden asignarse a una variable de cualquier tipo de fecha y hora.
###### A.Obtener la fecha y hora actuales del sistema
###### SELECT SYSDATETIME()
###### ,SYSDATETIMEOFFSET()
###### ,SYSUTCDATETIME()
###### ,CURRENT_TIMESTAMP
###### ,GETDATE()
###### ,GETUTCDATE();
###### **Que al ejecutar dichas funciones nos retornaria, por ejemplo:**
######     SYSDATETIME()      2007-04-30 13:10:02.0474381
######     SYSDATETIMEOFFSET()2007-04-30 13:10:02.0474381 -07:00
###### SYSUTCDATETIME()   2007-04-30 20:10:02.0474381
###### CURRENT_TIMESTAMP  2007-04-30 13:10:02.047
###### GETDATE()          2007-04-30 13:10:02.047
###### GETUTCDATE()       2007-04-30 20:10:02.047
###### B.Obtener la fecha actual del sistema
###### SELECT CONVERT (date, SYSDATETIME())
###### ,CONVERT (date, SYSDATETIMEOFFSET())
###### ,CONVERT (date, SYSUTCDATETIME())
###### ,CONVERT (date, CURRENT_TIMESTAMP)
###### ,CONVERT (date, GETDATE())
###### ,CONVERT (date, GETUTCDATE());
###### **Todo esto nos retotnaria una fecha similar: 2007-04-30**
