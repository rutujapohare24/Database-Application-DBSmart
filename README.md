# Supermarket Sales and Customer Analytics Application

Welcome to the Supermarket Sales and Customer Analytics Application! This project is designed to assist small businesses in tracking their sales and implementing a customer reward program. The application features two graphical user interfaces (GUIs) tailored for operational and analytical purposes.

## Project Overview

### Operational GUI:
- **Functionality:**
  - Register customer data in a supermarket.
  - Input fields for customer information, including name, email address, and home address.
  - Search function for quick access to customer information and purchase history.
  - Integration with the supermarket's point-of-sale system for automatic data capture.

- **Usage:**
  - Businesses can easily register customer data and generate rewards to enhance customer loyalty.
  - User-friendly design for seamless integration into existing supermarket systems.

### Analytical GUI:
- **Functionality:**
  - Display key metrics and insights about the store's performance.
  - Integration with the supermarket's back-end database for real-time data analysis.
  - Insights for creating reports on store performance.

- **Usage:**
  - Supermarket owners can gain quick insights into their store's performance for data-driven decision-making.
  - User-friendly design and integration with back-end systems for improved business performance.

## Data Sources

### Dataset:
- Origin: Mockaroo
- Information: Customer data, item details, and invoices.
- Fields: Customer ID, Name, Email, Address, Postcode, Item ID, Item Type, Quantity, Price, Invoice ID, Invoice Time.

## Report

For a detailed explanation of the project, including code walkthroughs, analysis methodologies, and insights derived from the dataset, please refer to the comprehensive report included in the project repository. The report covers the following aspects:

- Detailed explanation of the operational and analytical GUI functionalities.
- In-depth exploration of the dataset and its relevance to both operational and analytical databases.
- Code walkthroughs for the `.ipynb` files, providing insights into the implementation of the application.
- Comprehensive analysis of key metrics and insights presented in the GUIs.
- Recommendations for small businesses based on the data insights.

## How to Use

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-username/supermarket-analytics.git
   ```

2. **Database Setup:**
  - Utilize the `customer_sales.csv` file as the mock dataset for database creation.
  - Create tables using `.sql` extension as shown in the provided report.
  - Diagram in the report illustrates the connections within the relational database schema.
  

3. **Schema Transformation:**
  - Convert the relational database schema to a star schema, positioning fact tables in the center.

4 **ELT Process:**
  - Execute ELT (Extract, Load, Transform) processes using the code provided in `analytical ETL.ipynb` and `operational.ipynb`.
  - Ensure the ELT process is based on the data from the `customer_sales.csv` file.

5 **GUI Dependencies:**
  - Ensure successful execution of previous files for proper GUI functionality.
  - `movie_sample.ui` is connected with `Team_DBS225_operational_database(1).py`.
  - `customer.ui` is connected with `Analytical database.py`.

6 **Operational GUI Features:**
  - Perform CRUD operations through the operational GUI.
  - Add, delete, and update data seamlessly using the graphical interface.

7 **Note on Dependencies:**
  - The operational GUI functionalities are dependent on the correct execution of previous files.

By following these steps and dependencies, the project ensures a well-structured relational database, efficient schema transformation, and functional graphical user interfaces for operational and analytical purposes.

Feel free to explore the application, contribute to its enhancement, and utilize the insights for improving sales and customer relationships. If you have any questions or feedback, please reach out to the contributors. Enjoy using the Supermarket Sales and Customer Analytics Application!
