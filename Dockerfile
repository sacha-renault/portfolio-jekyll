# Use an official Ruby image as the base
FROM ruby:3.0

# Install necessary dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile* /usr/src/app/

# Install Ruby gems
RUN bundle install --verbose

# Copy the rest of the files
COPY . /usr/src/app

# Expose port 4000 for Jekyll
EXPOSE 4000

# Command to serve the site
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
