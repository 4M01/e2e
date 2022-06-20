FROM mcr.microsoft.com/playwright:v1.22.0-focal

COPY . /e2e

WORKDIR /e2e

RUN npm install

RUN npx playwright install

CMD ["npx", "playwright", "test","--reporter=list" ]