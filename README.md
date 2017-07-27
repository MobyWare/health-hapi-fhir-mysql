# Goal
Showing how to use MySQL with HAPI FHIR rather than the file based derby database. My goal is to more easily access manipulate the data with the tools in the MySQL ecosystem. For example I generated the EER diagram using __*MySQL Workbench*__.

## Setup 
### Method 1

This worked. I had issues with Method 2. You use the docker image from [hbits](https://hub.docker.com/r/bhits/hapi-fhir-jpaserver/). Bhits also has a [git repo](https://github.com/bhits-dev/hapi-fhir).

#### Steps
* run `docker-compose up`
* browse to `http://http://localhost:9090/hapi-fhir-jpaserver/`

You can use curl to populate FHIR resources using this base URL `http://localhost:9090/hapi-fhir-jpaserver/baseStu3`. Find examples in the `curl-fhir-resources` folder.

### Method 2
The set up instructions I got from [How-to-guide](https://www.openhealthhub.org/t/howto-build-a-health-database-and-fhir-api-server-in-15-mins-using-open-source/155).

__*NB*__ I had issues getting this to work.

### Steps
* Clone HAPI FHIR repo
* Change FHIRServerConfig.java in the __*hapi-fhir-jpaserver-example*__ to set password & change driver to MySQL.

## Run Project
* run `docker-compose up`
* Browse to `http://http://localhost:9090/hapi-fhir-jpaserver/`

