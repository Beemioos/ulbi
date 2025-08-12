# Используем легковесный образ Node.js
FROM node:18-alpine

# Создаём рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm ci

# Копируем весь проект
COPY . .

# Собираем проект
RUN npm run build:prod

# Открываем порт
EXPOSE 3000

# Запускаем приложение (подставь команду запуска у себя)
CMD ["npm", "start"]
