![Hamazon screenshot](https://github.com/jonathanpberger/hamazon/blob/master/doc/hamazon.png)

[![Conforms to README.lint](https://img.shields.io/badge/README.lint-conforming-brightgreen)](https://github.com/strangelove-ventures/readme-dot-lint)

🐷 Why use Hamazon?
=============================

## Introducing Hamazon.com (for all your example-app needs)

[Doylist](https://tvtropes.org/pmwiki/pmwiki.php/Main/WatsonianVersusDoylist) explanation: Hamazon ("Your Fine Purveyors of Pork Products since 2010"), is a fictitious example app I use so as to have a consistent example when telling stories. In the spirit of Convention Over Configuration, it&#8217;s helpful to have a go-to narrative rather than inventing a new example for every story. Because Hamazon bears striking similarities to a certain e-commerce site, most people grok it quickly, and because the default Pivotal Tracker Sample Project is an e-commerce site, it&#8217;s easy to quickly generate a new Hamazon backlog at any time.

[Watsonian](https://tvtropes.org/pmwiki/pmwiki.php/Main/WatsonianVersusDoylist) explanation: Hamazon is a two-sided marketplace, helping Artisenal pork farmers sell their wares to effete hipster city-dwelling gourmands.


🐷🐷 Who uses Hamazon?
=============================

Hamazon is built for anyone who's—more than once—had to come up with easily understandable, semantically neutral examples of...something.


🐷🐷🐷 What's included in Hamazon?
=============================

## Hamazon v0.1 includes:

- Design assets, mockups, and that sort of thing in the `/doc` folder. This is where I get most of the value of Hamazon these days.</li>
- The rest of this repo is a <em>very</em> old Spree install that I modified for cosmetic purposes. I haven&#8217;t tried to run it in years. One of these days I may update it (if I ever need to).

## Personas

- Sam the Seller
- Blake the Buyer


🐷🐷🐷🐷 How do I use it?
=============================

## Running the Spree app
- `git clone` etc. etc.
- `rvm use 2.0.0-p481`
- `bundle`
- `rake db:reset && rake db:migrate`
- `rake db:seed` # to create admin account
- `rake spree_sample:load` # load piggy samples
- `rails s`

🐷🐷🐷🐷🐷 Extras
=============================

It's my hope that others will start using Hamazon and contribute back to it. Code contributions would be welcome, but even just using it spreads the benefits of Convention Over Configuration: it helps us eliminate trivial choices. Just have some Hamazon. You know you want to.

## Additional Resources

- [Bacon mockup](http://baconmockup.com/) is placekitten for bacon.
- [Bacon ipsum](http://baconipsum.com/) is just what it sounds like. (Note: [Lorem Ipsum is a lie!](https://twitter.com/jonathanpberger/status/753960310164353024))

