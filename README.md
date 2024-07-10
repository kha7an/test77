
## Установка и запуск

1. **Клонируйте репозиторий:**

    ```sh
    git clone https://github.com/kha7an/test77.git
    cd tets
    ```

2. **Создайте и запустите контейнеры:**

    ```sh
    docker-compose up --build
    ```

3. **Создайте и мигрируйте базу данных:**

   В новом терминале выполните следующие команды:

    ```sh
    docker-compose run web bundle exec rails db:create
    docker-compose run web bundle exec rails db:migrate
    docker-compose run web bundle exec rails db:seed
    ```

4. **Доступ к приложению:**

   Откройте ваш браузер и перейдите по адресу [http://localhost:3000](http://localhost:3000).


