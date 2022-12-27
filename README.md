# apache-superset-local
Local development and exploration for learning

# Setup local environment and activate

`make init-venv` & `activate`

# Initialize the database

`superset db upgrade`

Official instructions taken from [here](https://superset.apache.org/docs/installation/installing-superset-from-scratch/):

# Create an admin user in your metadata database

Use `admin` as username to be able to load the examples.

```python
export FLASK_APP=superset
superset fab create-admin
```

# Load some data to play with

```python
superset load_examples
```

# Create default roles and permissions

```python
superset init
```

# To start a development web server 

Use -p to bind to another port.

```python
superset run -p 9088 --with-threads --reload --debugger
```
