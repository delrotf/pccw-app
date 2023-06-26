# pccw-app

This application allows users to register to the application, and edit their data. When registering, an activation email will be sent so please use a valid email that you have access. The user would then click the activation link to activate the account and be able to login.

## Unauthenticated Users:

These users are only allowed to see the login page and register.

## Authenticated Users:

These users are allow to login and edit their data.

## Admin Users:

An admin is able to see all the users. The admin can also create, modify, deactivate (soft delete), or delete (permanent) the users. Also, the admin can convert a user to an admin.

## JDK

This application supports JDK 17 to 19.

## Running the script

I have created a script to run in a single command. After cloning this project to your local, go to the project directory and run:

On Windows:

```
runapp.bat
```

For non Windows:

```
runapp.sh
```

## Access the application

Access the application using this url:

```
http://localhost:8080/
```
## Login as admin

You may login as an admin using

username:
```
admin
```
password:
```
admin
```

## Login as a user

You may login as a user using

username:
```
user
```
password:
```
user
```

## Here is the details of the script.
You won't have to run the following if you already have run the script above.

### Dockerizing this application

You can dockerize this application and all the services that it depends on.
To achieve this, first build a docker image of the app. You must have a running Docker daemon.

#### Build the docker image of this application

Build the docker image by running:

```
npm run java:docker
```

In case of an error. you may run this directly:

```
./mvnw -ntp verify -DskipTests -Pprod jib:dockerBuild
```

Or build a arm64 docker image when using an arm64 processor os like MacOS with M1 processor family running:

```
npm run java:docker:arm64
```

In case of an error. you may run this directly:

```
./mvnw -ntp verify -DskipTests -Pprod jib:dockerBuild -Djib-maven-plugin.architecture=arm64
```

And then run the command to run the projects with its dependencies.

#### Running with Docker

Rung this command to run the projects with its dependencies.

```
docker compose -f src/main/docker/app.yml up -d
```





