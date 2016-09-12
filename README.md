Начать работать с сайтом крайне просто. Для начала [устанавливаем Hugo](https://gohugo.io/). Далее клонируем репу проекта:

```
git clone git@github.com:JavaBy/jprof-hugo.git
```

Идем внутрь скачанной папки, создаем внутри папку themes:

```
cd jprof-hugo && mkdir themes && cd themes
```

Пора скачивать тему:

```
git clone git@github.com:yoshiharuyamashita/blackburn.git
```

Чудесно! Возвращаемся назад, попутно делая _deploy.sh_ исполняемым файлом:

```
cd .. && chmod +x deploy.sh
```

Теперь мы готовы творить! Идем в папку content и создаем там новый пост:

```
cd content/post && touch 260816-1.md
```

Посты пишутся в разметке Markdown, именование для изображений и постов я определил как __датапубликации-порядоквтечениедня__. Почитайте сайтик Hugo чтобы разобраться что к чему в папке проекта и посмотрите другие посты для примера оформления. После того как закончили ваять, посмотрите что вышло:

```
cd ../.. && hugo server -t blackburn
```

А далее - разбираемся как это все запушить, последний раздел [https://gohugo.io/tutorials/github-pages-blog/](https://gohugo.io/tutorials/github-pages-blog/).