# Kittens API

This project is a simple Rails application that serves as a data-producing API. It allows users to interact with kittens data through RESTful endpoints. This README provides instructions on setting up the project and using its features.

## Setup

To get started with the Odin Kittens API, follow these steps:

1. **Install Dependencies**: Run `bundle install` to install all required gems.

2. **Database Setup**: Configure your database settings in `config/database.yml` and run `rails db:create` and `rails db:migrate` to set up the database.

3. **Run the Server**: Start the Rails server with `rails server` or `rails s`.

## Kitten Model

The project includes a `Kitten` model with the following attributes:

- `name`: The name of the kitten.
- `age`: The age of the kitten.
- `cuteness`: A measure of the kitten's cuteness.
- `softness`: A measure of the kitten's softness.

## RESTful Endpoints

The application exposes the following RESTful endpoints for interacting with kittens:

- `GET /kittens`: Retrieve a list of all kittens.
- `GET /kittens/:id`: Retrieve details of a specific kitten.
- `POST /kittens`: Create a new kitten.
- `PUT /kittens/:id`: Update details of a specific kitten.
- `DELETE /kittens/:id`: Delete a specific kitten.

The default route of the application is set to `kittens#index`.

## HTML Interface

The project also provides a basic HTML interface for interacting with kittens. The views for listing kittens, showing a single kitten, creating and editing kittens, and displaying flash messages are implemented.

## JSON API

In addition to the HTML interface, the application supports JSON API endpoints for retrieving kittens data. You can access JSON responses by specifying the `accept: :json` header in your requests. The `KittensController` is configured to respond to JSON requests and render appropriate JSON data.

Kudos to [The Odin Project](https://www.theodinproject.com/lessons/ruby-on-rails-kittens-api).
