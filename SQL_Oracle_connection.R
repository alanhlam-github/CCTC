
# a script to connect into Oracle; use source() to execute

packages = c("dbplyr","DBI","rJava","RJDBC",
"DT","tidyverse","scales","openxlsx",
"downloadthis")

lapply(packages,library,character.only=T)

# make sure your local drive has Java installed along with the `ojdbc` jar file

jdbc_driver = JDBC(driverClass = "oracle.jdbc.OracleDriver", 
                    classPath = "C:/Program Files/Java/jre-1.8/ojdbc8.jar")

drv=JDBC("oracle.jdbc.driver.OracleDriver", "ojdbc8.jar")

db_connection=dbConnect(drv, "jdbc:`Database Type`:thin:@//`Hostname`:`Port`/`SID`", "`Username`", "`Password`")

banner <- dbConnect(JDBC("oracle.jdbc.OracleDriver", "C:/oracle/23.4/instantclient_23_4/ojdbc8.jar"),
                    "jdbc:`Database Type`:thin:@//`Hostname`:`Port`/`SID`", "`Username`", "`Password`")

# modified 13feb2024
# created 22-oct-2024 by AHL