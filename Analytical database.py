import sys
from PyQt5 import uic
from PyQt5.uic import loadUi
from PyQt5 import QtWidgets
from PyQt5.QtWidgets import QDialog,QApplication,QTableWidgetItem,QPushButton,QHeaderView
import mysql.connector as c
from mysql.connector import Error
from configparser import ConfigParser

try:
    conn = c.connect(host='IES-ADS-ClassDB.sjsu.edu', database='dbs22_wh', user='dbs22_user',
                         password='Papaya_108')
    if conn.is_connected():
        cursor = conn.cursor()
        cursor.execute('select database();')
        record = cursor.fetchone()
       
        print("You're connected to database: ", record)

except Error as e:
            print("Error while connecting to MySQL", e)

class MainWindow(QDialog):
    def __init__(self):
        super().__init__()
        self.ui =uic.loadUi('customer_analysis.ui',self)

        

        #adding pushbutton
        self.ui.pushButton.clicked.connect(self._enter_Avg_discount_data)
        self.ui.pushButton_2.clicked.connect(self._enter_sum_Quantity_data)
        self.ui.pushButton_3.clicked.connect(self._enter_Avg_discount_time_data)
        self.ui.pushButton_4.clicked.connect(self._enter_Avg_price_data)


        
        
        self.ui._initialize_table()
        self.ui._initialize_table_1()



    def show_dialog(self):
        """
        Show this dialog.
        """
        self.ui.show()

    

    def _adjust_column_widths(self):
        """
        Adjust the column widths of the passanger table to fit the contents.
        """
        header = self.ui.tableWidget.horizontalHeader();
        header.setSectionResizeMode(0, QHeaderView.ResizeToContents)
        header.setSectionResizeMode(1, QHeaderView.Stretch)


    def _initialize_table(self):
        """
        Clear the table and set the column headers.
        """
        self.ui.tableWidget.clear()

        col = ['Cust_state','Average Discount']
        self.ui.tableWidget.setHorizontalHeaderLabels(col)        
        self._adjust_column_widths()

    def _initialize_table_1(self):
        """
        Clear the table and set the column headers.
        """
        self.ui.tableWidget_2.clear()

        col = ['Invoice_Date','Sum_quantity']
        self.ui.tableWidget_2.setHorizontalHeaderLabels(col)        
        self._adjust_column_widths()




#query 1 with tablewidget
    def _enter_Avg_discount_data(self):    
        """
        Enter passanger data from the query into 
        the new tables.
        """    
        
        
        sql_1 = ( """
            select Cust_state, avg(discount) 
            from customer_dim, sales_fact
            where customer_dim.Cust_ID=sales_fact.Cust_ID
            Group by Cust_state
            order by avg(discount);
            """ 
              )                
        cursor.execute(sql_1)
        k = cursor.fetchall()
        print(k)
        
        # Set the class data into the table cells.
        row_index = 0
        for row in k:
            column_index = 0
            
            for data in row:
                item = QTableWidgetItem(str(data))
                self.ui.tableWidget.setItem(row_index, column_index, item)
                column_index += 1

            row_index += 1
                
        self._adjust_column_widths()
        self._adjust_column_widths()



#query 2 with tablewidget
    def _enter_sum_Quantity_data(self):    
        """
        Enter passanger data from the query into 
        the new tables.
        """    
        
        
        sql_1 = ( """
           select calendar_dim.Invoice_Date,sum(Quantity) 
           from calendar_dim, sales_fact
            where calendar_dim.Invoice_No=sales_fact.Invoice_No
            GROUP BY  calendar_dim.Invoice_Date
            order by sum(Quantity) DESC;
            """ 
              )                
        cursor.execute(sql_1)
        j = cursor.fetchall()
        print(j)
        
        # Set the class data into the table cells.
        row_index = 0
        for row in j:
            column_index = 0
            
            for data in row:
                item = QTableWidgetItem(str(data))
                self.ui.tableWidget_2.setItem(row_index, column_index, item)
                column_index += 1

            row_index += 1
                
        self._adjust_column_widths()
        self._adjust_column_widths()

#query 3

    def _enter_Avg_discount_time_data(self):    
           
         
        sql_1 = ( """
           select calendar_dim.Invoice_time,sum(Quantity) 
           from calendar_dim, sales_fact
           where calendar_dim.Invoice_No=sales_fact.Invoice_No
           GROUP BY  calendar_dim.Invoice_time
           order by sum(Quantity) DESC;
            """ 
              )                
        cursor.execute(sql_1)
        m = cursor.fetchall()
        
        for row in m:
            print(row)

#query 4
    def _enter_Avg_price_data(self):    
           
         
        sql_1 = ( """
           Select Cust_state,avg(Item_price)
           from customer_dim,sales_fact
           where sales_fact.Cust_ID=customer_dim.Cust_ID
           Group by Cust_state
         order by avg(Item_Price) desc;
            """ 
              )                
        cursor.execute(sql_1)
        m = cursor.fetchall()
        
        for row in m:
            print(row)

    


    


if __name__ == '__main__':
    app = QApplication(sys.argv)
    form = MainWindow()
    form.show_dialog()
    sys.exit(app.exec_()) 

