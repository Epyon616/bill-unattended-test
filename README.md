# Bill Unattended test

This application pulls data in a JSON format from a given URL and parses it, and then the data is presented in a user friendly format on the root path of the app.

I chose [Sinatra](http://www.sinatrarb.com/) as I personally feel its lightweight nature lends itself really well to this particular test and also helps to demonstrate the skill level of the individual without getting obscured by the magic that Rails gives you out of the box.

For the frontend part of this test I opted to use the [Materialize](http://materializecss.com/) CSS framework, and keep to a clean minimalist design for the overall layout. The reason for this is that I personally feel something like a bill should not be overly complicated.

The completed application has been deployed to Heroku [https://bill-unattended-test.herokuapp.com/](https://bill-unattended-test.herokuapp.com/).

Full specification of this technical test can be found [here](https://github.com/ldabiralai/bill-unattended-test).

To run this application locally:
1.  Clone the repository
2.  Move into the directory named "bill-test"
3.  Run `bundle install`
4.  Run `bundle exec rackup`
5.  Go to http://localhost:9292 in your browser

To run the test suite run `bundle exec rspec`
