# Basic Architecture Setup 

This project is a showcase of how a basic structure in code could look like. It takes a clean 
architecture approach but with leaner setup. Highly inspired by [Uncle Bob's Clean Architecture approach for Flutter here](https://github.com/ShadyBoukhary/flutter_clean_architecture). 
Check that package out as it explains everything in much more depth.

## Folder structure

```
   +--- lib
        +--- api // Defined and generated API
        +--- app // application layer with pages and viewmodels
        +--- data // responsible for data retrieval
          +--- mapper // maps data model to domain model
          +--- model // data model (DTO)
          +--- repository // calls to server or local database
        +--- domain // business logic
          +--- model // core classes of app
          +--- usecase // defines application-specific business rules
        +--- service // services used within the app
        +--- locator // dependency injection
        +--- main.dart // entry point
```

## Some Notes

There is not much to say about this. The in depth explanation of clean architecture is linked above.
There you can read everything. One thing to mention is, that the access token handling (getting, refreshing etc.) 
is usually not done on client side. The test API I was working with used to do access token handling
client side and not server side. The API keys which were in this project before are useless, since
it is a testing/mock API and has no specific value. 

Hope you will like this project and it will help you in starting a cleaner way of writing an Flutter apps.
If you have any questions, you can write me on Twitter! :)
 