FROM node:18-alpine As builder 

WORKDIR /app 

RUN npm install -g pnpm 

COPY . .

RUN pnpm install && pnpm build 

FROM node:18-alpine

WORKDIR /app

RUN pnpm install -g serve

COPY --from=buiilder /app/dist ./dist

EXPOSE 3000

CMD ["serve", "dist", "-l", "3000"]
