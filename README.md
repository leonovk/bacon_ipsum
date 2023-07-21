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
BaconIpsum.generate(paras: 5, sentences: nil)
```
Can take 2 arguments
Default values (paras: 5, sentences: 2)
paras: optional number of paragraphs
sentences: number of sentences (this overrides paragraphs)

### Output example

returns an array with strings:

[
    "Bacon ipsum dolor amet prosciutto hamburger venison alcatra drumstick chicken boudin pork loin.  Frankfurter kielbasa tail leberkas shank.",
    "Strip steak pork chop sausage andouille pancetta turkey.  Chicken corned beef ball tip tri-tip."
]

### Contribution

If you would like to contribute to the development, submit a pull request with your changes. We welcome any contributions that improve the service. You can also view the current project board here.  You can also contribute by reporting bugs or suggesting new features. Please use the GitHub issues for that.
