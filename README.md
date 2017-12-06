# FileCabinet

Service inspired by Google Docs, Evernote, etc. where users create and manage their documents   

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.


Required services up and running:

- [Docker](https://docs.docker.com/engine/installation/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Installing

The application runs in a docker environment, so the only action needed to start the app through docker is

```
docker-compose up web
```

You will notice that for the first time the docker will take some time because it needs to create the app container based on the docker image.

## Built With

* [Rails 4.2.5](https://github.com/rails/rails/tree/v4.2.5)
* [Ruby 2.2.1](https://ruby-doc.org/core-2.2.1) 

## Authors

* **Vane Trajkov**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details