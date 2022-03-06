# python-flask-docker
Итоговый проект (пример) курса "Машинное обучение в бизнесе"

Стек:

ML: sklearn, pandas, numpy
API: flask
Данные: с kaggle - https://www.kaggle.com/clmentbisaillon/fake-and-real-news-dataset?select=Fake.csv

Задача: предсказать по тексту и заголовку новости, является ли она фейком или нет. Бинарная классификация

Используемые признаки:

- title (text)
- text (text)
- date (time)

Преобразования признаков: tfidf

Модель: gradboost 
```

### Запускаем контейнер

Здесь Вам нужно создать каталог локально и сохранить туда предобученную модель (<your_local_path_to_pretrained_models> нужно заменить на полный путь к этому каталогу)
```
$ docker run -d -p 8180:8180 -p 8181:8181 -v C:\Users\user\GB_docker_flask_example\CourseBzhNews\gradboost_pipeline.dill
```

### Переходим на localhost:8181
