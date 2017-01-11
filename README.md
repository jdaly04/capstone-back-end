# DalyRestoration - Capstone Project

# ABOUT
  This is the Rails back-end of a full-stack application allowing a user (Admin, Colin Daly), to upload, edit, and delete products. In the context of this application,
  products are photos, descriptions, prices, of refurbished furniture for a
  small business owner to showcase work to potential clients.

## Authentication Routes

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |
