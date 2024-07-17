# Infinite Radio App

To set up and run the application, follow these instructions:

1. Clone the repository and navigate into the directory:

    ```bash
    git clone --recurse-submodules -j8 git@github.com:rasimgil/thesis-rasimgil.git
    cd thesis-rasimgil
    ```

2. Download the zip file containing models from the `https://drive.google.com/file/d/18FTAWdRAgls9x-QS3QcX2-ZIkhFtp6n7/view?usp=sharing` and extract the file into the './midi-emotion/output' directory.

3. Setup the Python virtual environment:

    ```bash
    python -m venv venv

    source ./venv/bin/activate

    pip install -r ./requirements.txt
    ```

4. Test the functionality of the output port:

    ```bash
    python ./midi-emotion/src/test.py
    ```

5. Navigate to the back end directory and run the Django server:

    ```bash
    cd ./music-generator/backend
    python manage.py runserver
    ```

6. Navigate into to the front end directory on a separate shell, start the development server after installing the React dependencies:

    ```bash
    npm install

    cd ./music-generator/frontend

    npm start
    ```

7. Access the application from your browser at `localhost:3000`.

Alternatively, there is a Makefile that automates steps 3-5.

1. To setup the application, run `make`
2. To test the functionality of the Timidity++ port, run `make test`
3. To run the application, run `make run`, and access the application from your browser at `localhost:3000`

Note: If the backend fails with the following message:

```bash
Traceback (most recent call last):
  File "/home/razzle/thetest/thesis-rasimgil/music-generator/backend/manage.py", line 11, in main
    from django.core.management import execute_from_command_line
ModuleNotFoundError: No module named 'django'
The above exception was the direct cause of the following exception:...
```

install the `django-cors-headers` module to fix the issue:

```bash
pip install django-cors-headers
```
