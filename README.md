# Python開発環境
参考: 書籍 Django for PROFESSIONALS

## 使い方
1. mkdir <DIRNAME> && cd <DIRNAME>
2. pipenv install django==2.2.3 psycopg2-binary==2.8.3
3. pipenv shell
4. exit
5. docker-compose up -d --build
6. DB setting (example.)
    ...
    DATABASES = {
      'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'PASSWORD': 'postgres',
        'HOST': 'db',
        'PORT': 5432,
      }
    }
    ...
7. docker-compose exec web python manage.py migrate
8. docker-compose exec web python manage.py runserver
