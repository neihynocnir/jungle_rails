# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Multiple high-level Goals 

1. Become familiar with Ruby and the Rails framework.
2. Learn how to navigate an existing code-base.
3. Use existing code style and approach to implement new features in unfamiliar territory.
4. Apply previous learning tactics to research and become familiar with a new paradigm, language and framework.
5. A simulation of the real world where feature and bug-fix requests are listed instead of step-by-step instructions on how to implement a solution,

## Final Product
<p align="center">
  <img  src="https://github.com/neihynocnir/jungle_rails/blob/master/docs/jungle.png" width=60%>
</p>
<p align="center">
  <img src="https://github.com/neihynocnir/scheduler/blob/master/docs/admin.png" width=60%>
</p>
<p align="center">
  <img src="https://github.com/neihynocnir/scheduler/blob/master/docs/about.png" width=60%>
</p>

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* Capybara
* Shoulda-matchers


## Author

[Neihy Rincon](neihy.rincon@gmail.com). :dizzy: