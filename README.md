Static Site Template
==============================

In order to properly develop a website, HTML and CSS files must be sent to your
browser by a web server. This little template uses a ruby web server, and
serves your plain HTML and CSS files from the `public/` directory.

It's ~~stolen from~~ inspired by [Heroku's excellent template](https://devcenter.heroku.com/articles/static-sites-ruby).

## How to set up

1. Fork this repository, and name your fork after your project.
2. Clone your fork into your machine. (`git clone <your-ssh-url>`)
3. `cd your_project_name`.
4. Run `bundle install`.
5. To start the local server, run `rackup -p 3000`. This will start the server
on port 3000 of your machine.

If you are running this on your local machine, you can then visit
<http://localhost:3000> in your browser to see your code.

If you add an HTML file to the `public/` folder, you can see it in your browser
by visiting <http://localhost:3000/your_file.html>.

If you are using [Nitrous.io](http://nitrous.io), you can click "Preview -
Port 3000" to view your site.
