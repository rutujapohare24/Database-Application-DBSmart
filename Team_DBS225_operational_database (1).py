import sys
from PyQt5 import uic
from PyQt5.uic import loadUi
from PyQt5 import QtWidgets
from PyQt5.QtWidgets import *
import mysql.connector as c
from mysql.connector import Error
from configparser import ConfigParser
from PyQt5 import QtGui
from PyQt5 import QtCore
from PyQt5.QtCore import QRect
from PyQt5.QtCore import QDate, QTime, QDateTime, Qt

try:
    conn = c.connect(host='IES-ADS-ClassDB.sjsu.edu', database='dbs22_db', user='dbs22_user',
                         password='Papaya_108')
    if conn.is_connected():
        cursor = conn.cursor()
        cursor.execute('select database();')
        record = cursor.fetchone()
       
        print("You're connected to database: ", record)

except Error as e:
            print("Error while connecting to MySQL", e)

selected_state=""
selected_postcode=""
selected_itemtype=""
selected_itemprice=""
selected_discount=""

class MainWindow(QDialog):
    def __init__(self):
        super().__init__()
        self.ui =uic.loadUi('Movie_sample_gui_4.ui',self)
        
        self.comboBox.activated.connect(self.selected_state_value)
        self.comboBox_2.activated.connect(self.selected_postcode_value)
        self.comboBox_3.activated.connect(self.selected_itemtype_value)
        self.comboBox_4.activated.connect(self.selected_discount_value)
        self.comboBox_5.activated.connect(self.selected_itemprice_value)

        self.combox_state()
        self.combox_postcode()
        self.combox_item_type()
        self.combox_discount()
        self.combox_price()
        self.show_dialog()
        self.show_date()
        self.show_time()
        
        #self.ui.pushButton_4.clicked.connect(self.Load_sale_data)
        self.ui.pushButton_2.clicked.connect(self.delete_data)
        self.ui.pushButton_3.clicked.connect(self.update_data)
        

        self.ui.pushButton.clicked.connect(self.insert_data)
        
        
        
    def selected_state_value(self):
        global selected_state
        selected_state = self.comboBox.currentText()
        print("Selected State value = " + selected_state)

    def selected_postcode_value(self):
        global selected_postcode
        selected_postcode = self.comboBox_2.currentText()
        print("Selected postcode value = " + selected_postcode) 

    def selected_itemtype_value(self):
        global selected_itemtype
        selected_itemtype = self.comboBox_3.currentText()
        print("Selected itemtype value = " + selected_itemtype) 

    def selected_discount_value(self):
        global selected_discount
        selected_discount = self.comboBox_4.currentText()
        print("Selected discount value = " + selected_discount) 

    def selected_itemprice_value(self):
        global selected_itemprice
        selected_itemprice = self.comboBox_5.currentText()
        print("Selected itemprice value = " + selected_itemprice) 
    
    def insert_data(self):
        Cust_state = selected_state
        Cust_postcode = selected_postcode
        Item_type = selected_itemtype
        Item_price = selected_itemprice
        Discount = selected_discount
        
        print("Cust_state = " + Cust_state)
        print("Cust_postcode = " + Cust_postcode)
        print("Item_type = " + Item_type)
        print("Item_price = " + Item_price)
        print("Discount = " + Discount)

        Item_No = self.lineEdit_7.text()
        Customer_id = self.lineEdit.text()
        First_name =self.lineEdit_2.text()
        Last_name =self.lineEdit_3.text()
        Cust_address = self.lineEdit_8.text()
        
        line_no = self.lineEdit_4.text()
        Quantity = self.lineEdit_5.text()
        
        Invoice_no = self.lineEdit_6.text()
        Invoice_date = QDate.toString(self.dateEdit.date(), "dd/MM/yyyy")
        try:    
            Invoice_time = self.timeEdit.time().toString("hh:mm")
            h = Invoice_time.split(":")[0]
            m = Invoice_time.split(":")[1]
            if (int(h) > 12):
                x = int(h) - 12
                Invoice_time = str(x) + ":" + str(m) + " PM"
            else:
                Invoice_time = Invoice_time + " AM"            
        except Exception as e:
            print("Fail: " + str(e))

        print("Customer_id = " + Customer_id)
        print("First_name = " + First_name)        
        print("Last_name = " + Last_name)
        print("Cust_address = " + Cust_address)
        print("Item_No = " + Item_No)
        print("line_no = " + line_no)
        print("Quantity = " + Quantity)
        print("Invoice_no = " + Invoice_no)
        print("Invoice_date = " + Invoice_date)
        print("Invoice_time = " + Invoice_time)
        
        insert0 = "INSERT INTO item (Item_No,Item_type,Discount,Item_price) VALUES (%s,%s,%s,%s)"
        values0 = (Item_No,Item_type,Discount,Item_price)
        try:
            cursor= conn.cursor()
            cursor.execute(insert0,values0)
            pk = cursor.fetchall()
            for row in pk:
                print(row)
            conn.commit()
          
            print("success: item")
        except Exception as e:
            print("fail: " + str(e))
        

        insert1 = "INSERT INTO customer (Cust_ID,first_name,last_name,Cust_address,Cust_state,Cust_postcode) VALUES (%s,%s,%s,%s,%s,%s)"
        values1 = (Customer_id,First_name,Last_name,Cust_address,Cust_state,Cust_postcode)
        try:
            cursor= conn.cursor()
            cursor.execute(insert1,values1)
            lk = cursor.fetchall()
            for row in lk:
                print(row)
            conn.commit()
          
            print("success: customer")
        except Exception as e:
            print("fail: " + str(e))

        insert2 = "INSERT INTO invoiceitem (Line_no,Quantity,Item_No) VALUES (%s,%s,%s)"
        values2 = (line_no,Quantity,Item_No)
        try:
            cursor= conn.cursor()
            cursor.execute(insert2,values2)
            mk = cursor.fetchall()
            for row in mk:
                print(row)
            conn.commit()
          
            print("success: invoiceitem")
        except Exception as e:
            print("fail: " + str(e))

        insert3 = "INSERT INTO invoice(Invoice_No, Invoice_Date, Invoice_Time, Cust_ID) VALUES (%s,%s,%s,%s)"
        values3 =(Invoice_no,Invoice_date,Invoice_time,Customer_id)
        try:
            cursor= conn.cursor()
            cursor.execute(insert3, values3)
            rk = cursor.fetchall()
            for row in rk:
                print(row)
            conn.commit()
          
            print("success: invoice")
        except Exception as e:
            print("fail: invoice: " + str(e))

        insert4 = "INSERT INTO consist (Line_No,Invoice_No) VALUES (%s,%s)"
        values4 = (line_no,Invoice_no)
        try:
            cursor= conn.cursor()            
            cursor.execute(insert4,values4)
            nk = cursor.fetchall()
            for row in nk:
                print(row)
            conn.commit()
          
            print("success: consist")
        except Exception as e:
            print("fail: consist: " + str(e))



    def delete_data(self):
        Item_No = self.lineEdit_7.text()
        print("In delete: Customer_id = " + Customer_id)
        #Item_No = self.lineEdit_7.text()
        #Customer_id = self.lineEdit.text()
        #line_no = self.lineEdit_4.text()
        #Invoice_no = self.lineEdit_6.text()
       
        delete_item = "Delete from item where Item_No = %s"
        values_item = ( Item_No, )
        
        #delete_cust = "Delete  from customer where  Cust_ID= %s"        
        #values_cust = ( Customer_id ,)
        
        print(delete_cust)
        print(values_cust)
        try:
            cursor= conn.cursor()
            cursor.execute(delete_item, values_item)
            #cursor.execute(delete_cust, values_cust)
            conn.commit()
            print("success: delete ")
        except Exception as e:
            print("fail: delete " + str(e))


    def update_data(self):

        Item_No = self.lineEdit_7.text()
        Item_type = selected_itemtype
        Item_price = selected_itemprice
        Discount = selected_discount        
        print("Item_No = " + Item_No)
        print("Item_type = " + Item_type)
        print("Item_price = " + Item_price)
        print("Discount = " + Discount)
        
        update0 = "update item set Item_price =%s , Item_type = %s ,Discount = %s where Item_No =%s"
        values_0=(Item_price, Item_type, Discount, Item_No)
        
        try:
            cursor= conn.cursor()
            cursor.execute(update0, values_0)
            conn.commit()          
            print("success: update")
            
        except Exception as e:
            print("fail: update: " + str(e))


    def combox_state(self):
        try:
            cursor = conn.cursor()
            cursor.execute("select  distinct Cust_state from customer")
            k = cursor.fetchall()
            for row in k:
                self.comboBox.addItem(''.join(row))
                #print(row)   
        except Exception  as e: 
            print('error ' + str(e))


    def combox_postcode(self):
        try:
            cursor = conn.cursor()
            cursor.execute("select   Cust_postcode from customer")
            l = cursor.fetchall()
            for row in l:
                #print(row[0])   
                self.comboBox_2.addItem(str(row[0]))
        except Exception  as e: 
            print('error ' + str(e) + "\n\n")


    def combox_item_type(self):        
        try:
            cursor = conn.cursor()
            cursor.execute("select   Item_type from item")
            m = cursor.fetchall()
            for row in m:
                #print(row)   
                self.comboBox_3.addItem(''.join(row))
        except Exception  as e: 
            print('error ' + str(e))



    def combox_discount(self):
        try:
            cursor = conn.cursor()
            cursor.execute("select Discount from item")
            n = cursor.fetchall()
            for row in n:
                #print(row[0])
                self.comboBox_4.addItem(str(row[0]))
        except Exception  as e: 
            print('error ' + str(e))


    def combox_price(self):       
        try:
            cursor = conn.cursor()
            cursor.execute("select  distinct Item_price from item")
            p = cursor.fetchall()
            for row in p:
                #print(row[0])
                self.comboBox_5.addItem(str(row[0]))
        except Exception  as e: 
            print('error ' + str(e))

    def show_date(self):
        print(self.dateEdit.date())


    def show_time(self):
        time = QTime.currentTime()
        print(self.timeEdit.time())
        
        

    def Load_sale_data(self):
        sql_2 = ( """
            Select * from customer,item,invoice,invoiceitem,consist limit 10
             """ 
              )
        cursor = conn.cursor()
        cursor.execute(sql_2)
        jk = cursor.fetchall()
        for row in jk:
            print(row)
            
            
            

    def show_dialog(self):
        """
        Show this dialog.
        """
        self.ui.show()

if __name__ == '__main__':
    app = QApplication(sys.argv)
    form = MainWindow()
    form.show_dialog()
    sys.exit(app.exec_()) 
