README.txt

====================================================
Inventory Management System - DRDL
====================================================

Project Overview:
-----------------
The "Inventory Management System" is a desktop-based Java application designed for the Defence Research and Development Laboratory (DRDL), part of the Defence Research and Development Organization (DRDO). This system provides a centralized solution for managing inventory and equipment records across multiple divisions.

Objectives:
-----------
- Centralized and secure inventory management
- Division-based data access and role management
- CRUD operations (Create, Read, Update, Delete) for equipment
- Dynamic data handling with GUI-based interface
- Improved asset tracking and operational readiness

Features:
---------
- User authentication with division-specific access
- Equipment and inventory data entry, update, and deletion
- Shelf life monitoring for perishable items
- Disposal tracking for outdated equipment
- Clean GUI built using Java Swing

Technologies Used:
------------------
- Java (Swing)
- JDBC
- MySQL
- Apache Ant (for build)
- NetBeans IDE (recommended)

Included Files:
---------------
- DisposalRecord.java
- Equipments.java
- Home.java
- Login.java
- ShelfLife.java
- ConnectionProvider.java
- tables.java
- InventoryManagementSystem.java
- inventory_divisiontable.sql
- inventory_equipmenttable.sql
- inventory_inventorytable.sql
- inventory_usertable.sql
- build.xml
- manifest.mf

How to Run:
-----------
1. Set up a MySQL database and import the .sql files to create necessary tables.
2. Update database credentials in `ConnectionProvider.java`.
3. Compile the project using NetBeans or the provided `build.xml`.
4. Run the `InventoryManagementSystem.java` file to launch the GUI.

Future Enhancements:
--------------------
- Integration with barcode/RFID readers
- Auto-alerts for low stock or expiry dates
- Dashboard for analytics and reporting
- Role-based access enhancements

End of README
