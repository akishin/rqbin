FROM ruby:3.3.0-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    libsqlite3-dev \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/* \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g yarn

# Set working directory
WORKDIR /app

# Copy Gemfile and install gems
COPY Gemfile ./
RUN gem install bundler && \
    bundle install --jobs 4 --retry 3

# Copy application code
COPY . .

# Generate Gemfile.lock if it doesn't exist
RUN bundle lock --add-platform ruby 2>/dev/null || true

# Precompile assets (optional, can be done at runtime)
# RUN bundle exec rake assets:precompile

EXPOSE 3000

# Start the server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
