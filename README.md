# AnonAPITask
Решение одного задания с использованием Combine

Написать приложение для вывода ленты постов, полученной с API (ниже будет формат запроса).

Обязательно:
- экран ленты с подгрузкой данных в конце списка
- организовать переключение сортировки
- экран поста детально (при тапе на любой пост из ленты)
- без использования сторонних фреймворков/библиотек
- экраны должны быть сверстаны кодом (особо не увлекаться, просто вывести основную информацию с поста)

Дополнительно:
- реализовать слой кэша
- предпочтительно использование сервис-ориентированной архитектуры
- нужно покрыть один из классов отвечающих за получение данных Unit-тестами

——

API:
https://k8s-stage.apianon.ru/posts/v1/posts

GET параметры запроса:
- first (Int) - кол-во выбираемых постов (Default value : 20)
- after (String) - строка содержащая "cursor" полученный от бекенда после предыдущего запроса. Часть системы пагинации.
- orderBy (String) - сортировка постов. Варианты "mostPopular", "mostCommented", "createdAt".
——

Пагинация работает так:
первый запрос идет без "after", чтобы получить следующие страницы подгрузки нужно передать параметр «cursor» из предыдущего ответа. Пока «cursor» не null - можно грузить дальше.



