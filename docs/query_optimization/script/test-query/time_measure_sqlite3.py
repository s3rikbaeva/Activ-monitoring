import sqlite3
from sqlite3 import Error
import time

def openConnection(_dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Open database: ", _dbFile)
    conn = None
    try:
        conn = sqlite3.connect(_dbFile)
        print("success")
    except Error as e:
        print(e)
    print("++++++++++++++++++++++++++++++++++")
    return conn

def closeConnection(_conn, _dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Close database: ", _dbFile)
    try:
        _conn.close()
        print("success")
    except Error as e:
        print(e)
    print("++++++++++++++++++++++++++++++++++")

def testQuery(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("\nPerformance measure: testQuery")

    start = time.time()

    try:
        sql = """ 
            SELECT e.employeeID, CONCAT(e.firstName,' ',e.lasName) as "fullname", c.name, e.yearsAtCompany
            FROM employee e
            JOIN company c
            JOIN employee_record erd
            WHERE e.employeeID = c.employeeID
            AND e.employeeID = erd.employeeID
            AND e.yearsAtCompany > 5 ORDER BY 4 DESC; 
        """
        print(sql)

        cur = _conn.cursor()
        cur.execute(sql)
        rows = cur.fetchall()
        for row in rows:
            l = '\n\tRESULT: {}\n'.format(row[0])
            print(l)
    except Error as e:
        print(e)

    end = time.time()
    print("\nTIME FOR testQuery: " + str(end - start) + " seconds\n")

    print("++++++++++++++++++++++++++++++++++")

def main():
    database = r"triplea.sqlite"

    conn = openConnection(database)
    with conn:
        testQuery(conn)
    closeConnection(conn, database)

if __name__ == '__main__':
    main()
