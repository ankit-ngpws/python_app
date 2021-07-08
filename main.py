from flask import Flask, flash, render_template, request, redirect, url_for, session
from flask.wrappers import Response
from flask_mysqldb import MySQL
from werkzeug.utils import secure_filename
import MySQLdb.cursors
import re
import os.path


app = Flask(__name__)
UPLOAD_FOLDER ='/home/zorawar/python/BLOG/static/uploads'
app.secret_key = 'your secret key'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'password'
app.config['MYSQL_DB'] = 'mydb'

mysql = MySQL(app)

@app.route('/insert', methods =['GET', 'POST'])
def register():
    print("check")
    data=request.get_json()
    fname=data["firstname"]
    lname=data["lastname"]
    dob=data["dob"]
    gender=data["gender"]
    email=data["email"]
    mobile=data["mobile"]
    doj=data["doj"] 
    post=data["designation"]
    cur = mysql.connection.cursor()
    temp=cur.execute("INSERT INTO EmployeDetails (FirstName, LastName, DOB, DOJ, gender, Designation, Email, MobileNo)  VALUES (%s, %s, %s, %s, %s, %s, %s, %s)", (fname, lname, dob, doj, gender, post, email, mobile))
    print(temp)
    mysql.connection.commit()
    cur.close()
    if temp==0:
        response={"result": "data is not added"}
    else:
        response={"result": "data is successfully added"}
    return response

@app.route('/delete', methods=['GET', 'POST'])
def delete():
    data=request.get_json()
    print(data)
    id=data["id"]
    print(id)
    cur = mysql.connection.cursor()
    a=cur.execute("DELETE FROM EmployeDetails WHERE Id=%s",(id,))
    print(a)
    mysql.connection.commit()
    cur.close()
    if a==0:
        response={"result": "data is not deleted "}
    else:
        response={"result": "data is deleted successfully"}
    return response



@app.route('/user', methods=['GET', 'POST'])
def read():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM EmployeDetails")
    rows = cur.fetchall()
    print(cur.description)
    insertObject=[]
    coloumName=[column[0]for column in cur.description]
    for records in rows:
        insertObject.append(dict(zip(coloumName,records)))

    Response={"data":insertObject}
    return Response
#uniqe email ,mobile 10digit number valid and invavlid user firstname and lastname 
@app.route('/update', methods=['GET', 'POST'])
def update():
    print("check")
    data=request.get_json()
    id=data["id"]
    fname=data["firstname"]
    lname=data["lastname"]
    dob=data["dob"]
    gender=data["gender"]
    email=data["email"]
    mobile=data["mobile"]
    doj=data["doj"] 
    post=data["designation"]

    cur = mysql.connection.cursor()
    temp=cur.execute("UPDATE Myuser set FirstName =%s, LastName=%s, DOB=%s, DOJ=%s, gender=%s, Designation=%s, Email=%s, MobileNo=%s WHERE Id=%s",(fname, lname, dob, doj, gender, post, email, mobile,id))
    mysql.connection.commit()
    cur.close()
    if temp==0:
        response={"result": "data is not Updated "}
    else:
        response={"result": "data is Updated successfully"}
    return response

		
if __name__ == "__main__":
    app.run(debug=True)
