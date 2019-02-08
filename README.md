# API Example BISOFT-21

Project to showcase a RESTFUL API
Built with Ruby On Rails

## Dependencies

- Ruby 2.4.1
- Rails 5.2.2
- PostgreSQL v9.6 or greater

## Development Setup

### Define ruby gemset

If using RVM, be sure to set up your gemset:

    cd api-example-bisoft-21
    echo "api-example-bisoft-21" > .ruby-gemset
    cd ..
    cd api-example-bisoft-21

### Bundle

    gem install bundler
    bundle

### Create database

    rails db:create

### Migrate and seed database

    rails db:setup
