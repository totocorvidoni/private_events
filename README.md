# Members Only

Made in response of one of [The Odin Project](https://www.theodinproject.com) [assignments](https://www.theodinproject.com/lessons/associations#project-2-private-events).

Assignment description:

> You want to build a site similar to a private Eventbrite which
> allows users to create events and then manage user signups.
> Users can create events and send invitations and parties (sound
> familiar?). Events take place at a specific date and at a location
> (which you can just store as a string, like “Andy’s House”).
> 
> A user can create events. A user can attend many events. An event
> can be attended by many users. This will require you to model
> many-to-many relationships and also to be very conscious about your
> foreign keys and class names (hint: you won’t be able to just rely
> on Rails’ defaults like you have before).

## Getting started

To get started with the app, clone the repository and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```