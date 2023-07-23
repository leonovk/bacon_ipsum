## bacon_ipsum
[![Build Status](https://github.com/leonovk/bacon_ipsum/actions/workflows/ruby.yml/badge.svg)](https://github.com/leonovk/bacon_ipsum/actions/workflows/ruby.yml) ![Gem](https://img.shields.io/gem/dt/bacon_ipsum)

### Description

SDK for JSON API - Bacon Ipsum
Allows you to generate random text using Bacon Ipsum API

### Installation

```ruby
gem 'bacon_ipsum'
```
And then execute:

```bundle install```

Or install it yourself as:

```gem install bacon_ipsum```

Require if necessary:

```require 'bacon_ipsum'```

### Usage

```ruby
BaconIpsum.generate
```
Can take 5 arguments
*type:* 'all-meat' for meat only or 'meat-and-filler' for meat mixed with miscellaneous ‘lorem ipsum’ filler.
*paras:* optional number of paragraphs, defaults to 5.
*sentences:* number of sentences (this overrides paragraphs)
*start_with_lorem:* optional pass 1 to start the first paragraph with ‘Bacon ipsum dolor sit amet’.
*format:* 'json' (default), 'text', or 'html'

Without arguments, as in the example above, the default will be the following parameters:
*type:* 'meat-and-filler'
*paras:* 5
*format:* 'json'

Example usage:
```BaconIpsum.generate(paras: 1, type: 'all-meat', start_with_lorem: 1, format: 'text')```
```#output: 'Bacon ipsum dolor amet in incididunt strip steak ullamco brisket minim nulla pariatur flank.'```

If you use the format jos will return an array with strings:

[
"Bacon ipsum dolor amet prosciutto hamburger venison alcatra drumstick chicken boudin pork loin.  Frankfurter kielbasa tail leberkas shank.", "Strip steak pork chop sausage andouille pancetta turkey.  Chicken corned beef ball tip tri-tip."
]

### Contribution

If you would like to contribute to the development, submit a pull request with your changes. We welcome any contributions that improve the service. You can also view the current project board here.  You can also contribute by reporting bugs or suggesting new features. Please use the GitHub issues for that.
