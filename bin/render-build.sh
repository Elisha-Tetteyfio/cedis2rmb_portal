#!/usr/bin/env bash
# exit on error

set -e

echo "Installing dependencies..."
bundle install --without development test

echo "Installing foreman..."
gem install foreman

echo "Building application..."
set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
bundle exec rails db:seed

echo "Starting services..."
foreman start
