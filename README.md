## Setup of AWS Elastic Beanstalk instance

1. Install AWS EB CLI
2. Configure EB application
3. Configure EB environment in application
4. Deploy application to EB environment
5. Local Docker deployment using docker-compose

---

### Configure EB application

[**eb init**](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb3-init.html)

> Sets default values for Elastic Beanstalk applications created with EB CLI by prompting you with a series of questions.

`mkdir __dir-name__`
`cd __dir-name__`
`eb init __application-name__ --profile __profile-name__ -p docker`

---

### Configure EB environment in application

[**eb create**](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb3-create.html)

> Creates a new environment and deploys an application version to it.

`eb create __env-name__`
`eb open`

---

### Deploy application to EB environment

[**eb deploy**](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb3-deploy.html)

> Deploys the application source bundle from the initialized project directory to the running application.
> If git is installed, EB CLI uses the git archive command to create a .zip file from the contents of the most recent git commit command.
> However, when .ebignore is present in your project directory, the EB CLI doesn't use git commands and semantics to create your source bundle. This means that EB CLI ignores files specified in .ebignore, and includes all other files. In particular, it includes uncommitted source files.

`eb deploy __env-name__`

### Local Docker deployment using docker-compose

docker-compose allows you create relationships between different services within a single Docker image, for example two APIs interacting with a single database. It exposes the necessary ports, creates the directory configuration etc.

`docker-compose build`
`docker-compose up`