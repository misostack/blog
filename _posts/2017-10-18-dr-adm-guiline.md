---
layout: project
title: 1.Guiline
description: guiline
order: 1
tags: 
    - "dr-adm"
---

## Testing

### Running test spec result auto reloading

```
cd adomik/adomik-spec/
npm run watch
```

### Running test

*Running All Test*

```
rspec --format documentation --color
```

*or*

```
rspec --format html --out rspec_results.html
```

*Running exactly Test*

```
rspec spec/ad_exchange_api_spec.rb --format documentation --color
rspec spec/ad_exchange_api_spec.rb --format html --out "C:\dr\adomik\adomik-spec\src\index.html"
```

*Ref*
```
# Run only model specs
bundle exec rspec spec/models

# Run only specs for AccountsController
bundle exec rspec spec/controllers/accounts_controller_spec.rb

# Run only spec on line 8 of AccountsController
bundle exec rspec spec/controllers/accounts_controller_spec.rb:8
```

## References

- [Rspec](http://rspec.info/)
- [Rspec expectation](https://github.com/rspec/rspec-expectations)
