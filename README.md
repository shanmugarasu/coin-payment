# PaymentService
Service with restful interface, that handles payments.

# Automated build and excution 
On the event push to master branch, the follwoing github actions will be executed within the self hosted runner. 

1. Check out the source code into runner space:
```
 actions/checkout@v3
```
2. Setting up the JAVA environment
```
 actions/setup-java@v3
 ``` 
3. Setting up the MAVEN environment
```
 aahmed-se/setup-maven@v3
 ``` 
4. Run the maven build and in-built jetty server
```
 run: mvn clean paymentservice jetty:run
 ```
   View the swagger listing here:
```
http://localhost:8080/v1/swagger.json - Localhost would public ip address of VM
```

5. Making the package to staging folder
```
 run: mkdir staging && cp target/*.war staging
 ``` 
6. Upload the build artifact to azure blop storage location
```
 actions/upload-artifact@v3
 ```
