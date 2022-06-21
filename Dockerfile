FROM mcr.microsoft.com/playwright:v1.22.0-focal

COPY . /e2e

WORKDIR /e2e

RUN npm install

RUN npx playwright install

# FROM scratch as export-test-results
# COPY --from=amolchavan/e2e_public /*.* .

# CMD 
CMD  ["npx", "playwright", "test"]