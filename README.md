# Swift-Lambda-M1

This is a sample to demonstrate challenges to building Swift lambdas on an M1. You can change the various build images in the Dockerfile for experimentation. 

### To Test

- `sam build;`
- `sam deploy --guided;`
- `curl -v -H "Accept: application/json" -H "Content-Type: application/json" <Resuling API GW URL>/test` 
