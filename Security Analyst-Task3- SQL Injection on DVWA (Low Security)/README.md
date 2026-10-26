# SQL Injection (SQLi) – DVWA Lab

## 1. What Is SQL Injection?

SQL Injection is a security vulnerability that occurs when an application includes user input directly in an SQL query. An attacker can manipulate the query to access data they are not supposed to see.

## 2. Payloads Used

**Payload 1:**
```sql
' OR 'ok' = 'ok' #
```

**Payload 2:**
```sql
'or '1' ='1
```

**Payload 3:**
```sql
' OR 'a'='a
```

## 3. Why Do These Payloads Work?

- **Payload 1:** The condition `'ok' = 'ok'` is always true. The `OR` operator can make the query condition true, while `#` comments out the remaining SQL in MySQL.
- **Payload 2:** The condition `'1' = '1'` is always true. If the input is inserted directly into the SQL query, it may change the query's logic.
- **Payload 3:** The condition `'a'='a'` is always true because both values are identical. If the application handles this input unsafely, it may return records beyond the intended result.



## 4. What Data Was Exposed?

The DVWA SQL Injection page  displayed  sample user information, including:

- User IDs
- First names
- sur names




## 5. How Can Developers Fix SQL Injection?
1. Parameterized query - An SQL query that uses placeholders for input values.
2. Prepared statement -	A query prepared separately from the values supplied to it. The database or driver handles those values safely.

Developers should use **parameterized queries (prepared statements)** instead of concatenating user input into SQL commands.

**Vulnerable example (Python with SQLite):**
```python
query = "SELECT * FROM users WHERE user_id = '" + user_id + "'"
cursor.execute(query)
```

**Safer example:**
```python
query = "SELECT * FROM users WHERE user_id = ?"
cursor.execute(query, (user_id,))
```

The `?` placeholder keeps user input separate from the SQL command, so the input is treated as data rather than executable SQL.

Other protections include validating input, limiting database account privileges, and avoiding detailed database error messages.

## 6. Conclusion

This DVWA exercise demonstrated how SQL Injection payloads can use always-true conditions to manipulate vulnerable SQL queries. Parameterized queries and prepared statements are the primary defenses against this vulnerability.