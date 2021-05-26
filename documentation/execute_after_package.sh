#!/bin/bash -i

step="AFTER PACKAGE"
projectName="1p-sap-retriever"

if is_maven
then
  log_info "[$step] Maven not supported yet"

else
	log_info "[$step] Executing command: 'export SCOPE=local && ./gradlew generateOpenApiDocs'"
  export SCOPE=local && ./gradlew generateOpenApiDocs

  log_info "[$step] Copying swagger file"
  mkdir -p /data/jenkins/workspace/$projectName/docs/specs
  cp docs/specs/swagger.yaml /data/jenkins/workspace/$projectName/docs/specs/

fi