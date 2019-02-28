
The tooling is based on docker. It should be sufficient to run `docker-compose up` in each folder respectively. Bear in mind that frondend requires the backend server.
Things that are missing or halfway done in this submission are:
1. There is no testing.
2. Error handling is minimal. I am only catching 401 errors on the frontend using an interceptor to redirect users to the login page. Consequently, error messages are not terribly helpful to the user.
3. I am not using any task queues. If I had more time, I would have implemented Celery/redis for RSVP requests.
4. There is no caching.
5. User management and user state is very basic. There are not a lot of guards and the navbar doesn't change for logged in vs unauthenticated users.
6. Users need to be logged in to RSVP. If you attempt to RSVP if you are not logged in, you get redirected to the login page. I believe you should be able to create a new user from the Sing Up page. But `username:"root" & password:"pass"` should be a functional set of credentials. 
I am using tokenbased authentication. Ideally this needs to be done using https in production, but again, https is missing in this setup.
7. There is no uglification of the JS code happening.
8. I am not doing any linting using pylint or jslint.
9. The python code be a bit better separated. However, the project is small and I think it is still pretty easy to see what is happening. Given more time, code structure could improve.
10. Also, I haven't instrumented the code for extensive logging. This is something that needs to be done in Production
11. I didn't spend a lot of time optimizing the docker images for size.

=============

to run the back end:

    $ cd backend
    $ docker-compose up

Important end points:

    /api/events
    /api/events/:id
    /api/events/:id/rsvp/

to run the frontend:

    $ cd frontend
    $ docker-compose up


## Note
Please remember to delete the generated Docker image. Sorry for this inconvenience. 