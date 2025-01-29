# MyFinance Database

## Overview
MyFinance is a MySQL compatible database designed to manage financial accounts and transactions. This project includes the necessary SQL scripts to create the database schema, tables, and constraints.

## Project Structure
- **sql/schema.sql**: Contains SQL commands to create the MyFinance database schema.
- **sql/tables/cuenta.sql**: SQL command to create the `Cuenta` table.
- **sql/tables/transaccion.sql**: SQL command to create the `Transaccion` table.
- **sql/tables/usuario.sql**: SQL command to create the `Usuario` table.
- **sql/constraints.sql**: SQL commands to add constraints to the tables.
- **migrations/initial.sql**: SQL commands for the initial migration.
- **queries/index.sql**: SQL queries for interacting with the database.

## Setup Instructions
1. Run `sql/schema.sql` to create the database.
2. Execute the table creation scripts in the following order:
   - `sql/tables/cuenta.sql`
   - `sql/tables/transaccion.sql`
   - `sql/tables/usuario.sql`
3. Apply constraints using `sql/constraints.sql`.
4. Run `migrations/initial.sql` for the initial setup.
5. Use `queries/index.sql` for database operations.

## License
This project is licensed under the MIT License.