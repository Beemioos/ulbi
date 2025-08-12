FROM node:18-alpine

# 2. Рабочая директория внутри контейнера
WORKDIR /app

# 3. Копируем package.json и package-lock.json
COPY package*.json ./

# 4. Устанавливаем зависимости
RUN npm install

# 5. Копируем исходники
COPY . .

# 6. Запускаем dev-server (webpack serve)
CMD ["npm", "start"]
