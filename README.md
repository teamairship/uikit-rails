# UIKit for Sass
[![Gem Version](https://badge.fury.io/rb/uikit-rails.svg)](https://badge.fury.io/rb/uikit-rails)

## Installation

`uikit-rails` is easy to drop into Rails with the asset pipeline.

In your Gemfile you need to add the `uikit-rails` gem, and ensure that the `sass-rails` gem is present - it is added to new Rails applications by default.

```ruby
gem 'uikit-rails'
gem 'sass-rails', '>= 3.2'
```

`bundle install` and restart your server to make the files available through the pipeline.

Import UIKit styles in `app/assets/stylesheets/application.scss`:

```scss
@import "uikit";
```

Make sure the file has `.scss` extension (or `.sass` for Sass syntax). If you have just generated a new Rails app,
it may come with a `.css` file instead. If this file exists, it will be served instead of Sass, so rename it:

```console
$ mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
```

Then, remove all the `*= require_self` and `*= require_tree .` statements from the sass file. Instead, use `@import` to import Sass files.

Require UIKit Javascripts in `app/assets/javascripts/application.js`:

```js
//= require jquery
//= require uikit
```

## Usage

Import UIKit into a Sass file (for example, application.scss) to get all of UIKit's styles, mixins and variables!

```scss
@import "uikit";
```

The full list of uikit variables can be found [here](https://github.com/thinkairship/uikit-rails/wiki/Variables). You can override these by simply redefining the variable before the `@import` directive, e.g.:

```scss
$button-primary-color: #FF4200;
$light-orange: #ff8c00;
$nav-navbar-color: $light-orange;

@import "uikit";
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/thinkairship/uikit-rails.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
