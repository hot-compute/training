The mysite example was created with the following commands:

```
django-admin startproject mysite
```

And then to start the dev web server, this command can be used after entering the first mysite directory: 

```
python manage.py runserver
```

Creating an app within the project is handled by doing this. Also performed from the first mysite directory. 

```
python manage.py startapp polls
```

To create any necessary tables used by installed apps, use the migrate command:

```
python manage.py migrate
```

The interactive shell can be started using this command:

```
python manage.py shell
```