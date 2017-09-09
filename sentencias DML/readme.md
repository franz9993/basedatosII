# **SENTENCIAS BASICAS DML**
## **USO DE FECHAS**

#### **Funciones que obtienen valores de fecha y hora del sistema**
###### Todos los valores de fecha y hora del sistema se derivan del sistema operativo del equipo en el que se ejecuta la instancia de SQL Server.

##### EJEMPLOS:
##### **SYSDATETIME (Transact-SQL)**
SYSDATETIME y SYSUTCDATETIME tienen más precisión de fracciones de segundo que GETDATE y GETUTCDATE. SYSDATETIMEOFFSET incluye el ajuste de zona horaria del sistema. SYSDATETIME, SYSUTCDATETIME y SYSDATETIMEOFFSET pueden asignarse a una variable de cualquier tipo de fecha y hora.
* ###### **A.Obtener la fecha y hora actuales del sistema**
     ###### SELECT SYSDATETIME() 
     ###### ,SYSDATETIMEOFFSET()
     ###### ,SYSUTCDATETIME()
     ###### ,CURRENT_TIMESTAMP
     ###### ,GETDATE()
     ###### ,GETUTCDATE();
###### Que al ejecutar dichas funciones nos retornaria, por ejemplo:
   ###### SYSDATETIME()      2007-04-30 13:10:02.0474381
   ###### SYSDATETIMEOFFSET()2007-04-30 13:10:02.0474381 -07:00
   ###### SYSUTCDATETIME()   2007-04-30 20:10:02.0474381
   ###### CURRENT_TIMESTAMP  2007-04-30 13:10:02.047
   ###### GETDATE()          2007-04-30 13:10:02.047
   ###### GETUTCDATE()       2007-04-30 20:10:02.047

* ###### **B.Obtener la fecha actual del sistema**
     ###### SELECT CONVERT (date, SYSDATETIME())
     ###### ,CONVERT (date, SYSDATETIMEOFFSET())
     ###### ,CONVERT (date, SYSUTCDATETIME())
     ###### ,CONVERT (date, CURRENT_TIMESTAMP)
     ###### ,CONVERT (date, GETDATE())
     ###### ,CONVERT (date, GETUTCDATE());
###### Todo esto nos retornaria una fecha similar: 2007-04-30


#### **SYSDATETIMEOFFSET (Transact-SQL)**
Devuelve un valor datetimeoffset(7) que contiene la fecha y hora del equipo en el que se está ejecutando la instancia de SQL Server. El ajuste de zona horaria está incluido.
SQL Server obtiene los valores de fecha y hora utilizando la API de Windows GetSystemTimeAsFileTime(). La exactitud depende del hardware del equipo y de la versión de Windows en las que la instancia de SQL Server se esté ejecutando. La precisión de esta API se fija en 100 nanosegundos. La precisión se puede determinar mediante la API de Windows GetSystemTimeAdjustment().
* ###### **A.Mostrar los formatos que devuelven las funciones de fecha y hora**
En el ejemplo siguiente se muestran los distintos formatos que devuelven las funciones de fecha y hora.
  ###### SELECT SYSDATETIME() AS SYSDATETIME
  ###### ,SYSDATETIMEOFFSET() AS SYSDATETIMEOFFSET
  ###### ,SYSUTCDATETIME() AS SYSUTCDATETIME
  ###### ,CURRENT_TIMESTAMP AS CURRENT_TIMESTAMP
  ###### ,GETDATE() AS GETDATE
  ###### ,GETUTCDATE() AS GETUTCDATE;
###### El conjunto de resultados es el siguiente.
  ###### SYSDATETIME() 2007-04-30 13:10:02.0474381
  ###### SYSDATETIMEOFFSET()2007-04-30 13:10:02.0474381 -07:00
  ###### SYSUTCDATETIME() 2007-04-30 20:10:02.0474381
  ###### CURRENT_TIMESTAMP 2007-04-30 13:10:02.047
  ###### GETDATE() 2007-04-30 13:10:02.047
  ###### GETUTCDATE() 2007-04-30 20:10:02.047

* ###### **B.Convertir valores de fecha y hora en date**
En el ejemplo siguiente se muestra cómo convertir valores de fecha y hora en date.
   ###### SELECT CONVERT (date, SYSDATETIME())
   ###### ,CONVERT (date, SYSDATETIMEOFFSET())
   ###### ,CONVERT (date, SYSUTCDATETIME())
   ###### ,CONVERT (date, CURRENT_TIMESTAMP)
   ###### ,CONVERT (date, GETDATE())
   ###### ,CONVERT (date, GETUTCDATE());
###### El conjunto de resultados es el siguiente.
  ###### 2007-04-30  
  ###### 2007-04-30  
  ###### 2007-04-30
  ###### 2007-04-30
  ###### 2007-04-30
  ###### 2007-04-30


#### **SYSUTCDATETIME (Transact-SQL)**
Devuelve un valor datetime2 que contiene la fecha y hora del equipo en el que la instancia de SQL Server se está ejecutando. La fecha y hora se devuelven como una hora universal coordinada (UTC). La especificación de precisión de fracción de segundo tiene un intervalo de 1 a 7 dígitos. La precisión predeterminada es 7 dígitos.
SYSDATETIME y SYSUTCDATE tienen más precisión de fracciones de segundo que GETDATE y GETUTCDATE. SYSDATETIMEOFFSET incluye el ajuste de zona horaria del sistema. SYSDATETIME, SYSUTCDATE y SYSDATETIMEOFFSET pueden asignarse a una variable de cualquier tipo de fecha y hora.


#### **TIMEFROMPARTS (Transact-SQL)**
Devuelve un valor time para la hora especificada y con la precisión indicada.
TIMEROMPARTS devuelve un valor de hora totalmente inicializado. Si los argumentos no son válidos, se generará un error. Si alguno de los parámetros es NULL, se devuelve NULL. Sin embargo, si el argumento precision es NULL, se generará un error.
El argumento fractions depende del argumento precision. Por ejemplo, si precision es 7, cada fracción representa 100 nanosegundos; si precision es 3, cada fracción representa un milisegundo. Si el valor de precision es cero, el valor de fractions también debe ser cero; de lo contrario, se produce un error.
Esta función se puede enviar de forma remota a servidores SQL Server 2012 y posteriores. No se puede enviar de forma remota a servidores que tengan una versión inferior a SQL Server 2012.

* ###### **A.Ejemplo simple sin fracciones de segundo**
###### SELECT TIMEFROMPARTS ( 23, 59, 59, 0, 0 ) AS Result;
###### El conjunto de resultados es el siguiente.
###### Result -------------------- 23:59:59.0000000
(1 row(s) affected)
* ###### **B.Ejemplo con fracciones de segundo**
###### En el siguiente ejemplo se muestra el uso de los parámetros fractions y precision:
###### 1.	Cuando fractions tiene el valor 5 y precision tiene un valor de 1, el valor de fractions representa 5/10 de un segundo.
###### 2.	Cuando fractions tiene el valor 50 y precision tiene un valor de 2, el valor de fractions representa 50/100 de un segundo.
###### 3.	Cuando fractions tiene el valor 500 y precision tiene un valor de 3, el valor de fractions representa 500/1000 de un segundo.
######  Transact-SQL
######  SELECT TIMEFROMPARTS ( 14, 23, 44, 5, 1 );
###### SELECT TIMEFROMPARTS ( 14, 23, 44, 50, 2 );
###### SELECT TIMEFROMPARTS ( 14, 23, 44, 500, 3 );
###### GO
###### El conjunto de resultados es el siguiente.
######## ----------------
14:23:44.5
(1 row(s) affected)
----------------
14:23:44.50
(1 row(s) affected)
----------------
14:23:44.500
(1 row(s) affected)
