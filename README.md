[![Deploy](https://github.com/JavaBy/jprof-hugo/actions/workflows/deploy.yml/badge.svg?branch=master&event=push)](https://github.com/JavaBy/jprof-hugo/actions/workflows/deploy.yml)

# Java Professionals BY

Сайт сообщества [Java Professional BY](http://jprof.by).

## Как работать с этим репозиторием?

Мы используем [Hugo](https://gohugo.io) для управления сайтом.

Посты добавляются в формате `.md` в папку `content/post`, картинки — в `static/img`.

Сборка и деплой происходят [автоматически](.github/workflows/deploy.yml) при обновлении ветки `master`.

Локальная сборка чуть сложнее:

1. [Установи](https://gohugo.io/getting-started/installing) Hugo.
1. Склонируй этот репозиторий:
    ```bash
    git clone git@github.com:JavaBy/jprof-hugo.git
    cd jprof-hugo
    ```
1. Создай ветку для изменений:
    ```bash
    git checkout -b <branch_name>
    ```
1. Тема для сайта — [Blackburn](https://themes.gohugo.io/blackburn) — хранится в [отдельном репозитории](https://github.com/JavaBy/blackburn) и включена в этот проект в виде [подмодуля](https://git-scm.com/book/ru/v2/Инструменты-Git-Подмодули), так что необходимо её проинициализировать:
    ```bash
    git submodule init && git submodule update
    ```
1. Иногда бывает нужно поправить что-то в самой теме. После изменений в репозитории с темой, необходимо обновить конфигурацию подмодулей в самом сайте:
    ```bash
    git submodule foreach git pull origin master
    ```
1. Добавляй контент.
1. Чтобы протестировать изменения, запусти Hugo в интерактивном режиме и открой [localhost:1313](http://localhost:1313):
    ```bash
    hugo server
    ```
1. Если всё окей — заливай изменения в репозиторий:
    ```bash
    git add . && git commit -m "[СООБЩЕНИЕ КОММИТА]" && git push origin <branch_name>
    ```
1. [Открывай PR](https://github.com/JavaBy/jprof-hugo/compare)
1. Жди мержа, проверяй сайт.
