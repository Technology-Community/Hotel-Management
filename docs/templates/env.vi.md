# Tài liệu Về Enviroment

Trong template sẽ gồm 4 file liên quan đến `env` gồm:

-   .env
-   .env.example
-   .env.development
-   .env.production

Với file `.env` khi clone về sẽ chưa có, bạn sẽ cần tạo nó từ 1 trong 3 file trên, dựa vào mẫu trong các file đó.

## Giải thích ý nghĩa env

| ID  |        Tên Env         |                               Ý Nghĩa                               |                          Giá trị hợp lệ                           |
| :-: | :--------------------: | :-----------------------------------------------------------------: | :---------------------------------------------------------------: |
|  1  | SERVER_MODE_ENVIROMENT |                        Hiện trạng của server                        |                    "development", "production"                    |
|  2  |    SERVER_USERNAME     |     Tên user sẽ được tạo mới khi chạy với môi trường production     |                          username hợp lệ                          |
|  3  |   LETS_ENCRYPT_EMAIL   | Email sẽ được đăng ký với [Let's Encrypt](https://letsencrypt.org/) |                           email hợp lệ                            |
|  4  |         DOMAIN         |                    Domain đăng ký chứng chỉ ssl                     |                           domain hợp lệ                           |
|  5  |        APP_NAME        |                         Tên của application                         |                                                                   |
|  6  |  DOCKER_COMPOSE_FILE   |                Tên file docker-compose được sử dụng                 | "docker-compose.development.yml", "docker-compose.production.yml" |
|  7  |        APP_PORT        |   Port http mà app sẽ dùng (nginx container sẽ nghe tại port này)   |                                                                   |
|  8  |      APP_PORT_SSL      |  Port https mà app sẽ dùng (nginx container sẽ nghe tại port này)   |                                                                   |
|  9  |       NGINXGROUP       |                   Group unix của nginx container                    |                                                                   |
| 10  |       NGINXUSER        |                    User unix của nginx container                    |                                                                   |
| 11  |        PHPGROUP        |                     User unix của php container                     |                                                                   |
| 12  |        PHPUSER         |                     User unix của php container                     |                                                                   |
| 13  |       REDIS_PORT       |                      Port của redis container                       |                                                                   |
| 14  |        DB_PORT         |                           Port của mysql                            |                                                                   |
| 15  |    DB_ROOT_PASSWORD    |                  Password của tài khoản root mysql                  |                                                                   |
| 16  |      DB_DATABASE       |      Database được khởi tạo khi mysql container được khởi tạo       |                                                                   |
| 17  |      DB_USERNAME       | Username của account sẽ được tạo khi mysql container được khởi tạo  |                                                                   |
| 18  |      DB_PASSWORD       | Password của account sẽ được tạo khi mysql container được khởi tạo  |                                                                   |
