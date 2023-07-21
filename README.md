## bacon_ipsum

### Description

SDK for JSON API - Bacon Ipsum
Allows you to generate random text using Bacon Ipsum API

### Installation

```ruby
gem 'bacon_ipsum'
```

$ bundle install

### Usage

```ruby
BaconIpsum.generate(paras: 5, sentences: 2)
```
Can take 2 arguments
Default values (paras: 5, sentences: 2)

### Output example

returns an array with strings:

[
    "Bacon ipsum dolor amet prosciutto hamburger venison alcatra drumstick chicken boudin pork loin.  Frankfurter kielbasa tail leberkas shank.",
    "Strip steak pork chop sausage andouille pancetta turkey.  Chicken corned beef ball tip tri-tip."
]
