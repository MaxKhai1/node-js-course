
# Використовуємо офіційний образ nginx в якості базового образу
FROM nginx

# Видаляємо за замовчуванням всі файли у папці /usr/share/nginx/html в образі
WORKDIR C:/nginx-1.24.0
RUN rm -r /usr/share/nginx/html/*

# Копіюємо файли нашого проєкту до образу nginx
COPY index.html /usr/share/nginx/html/index.html

# Відкриваємо порт 80, який є стандартним портом для веб-сервера nginx
EXPOSE 80

# Команда CMD визначає команду, яка буде виконана під час запуску контейнера
CMD ["nginx", "-g", "daemon off;"]