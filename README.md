Monimoni
====

Simple alive monitoring endpoint, implemented as Rails mountable engine.

Installation
---

Add the following line in your Gemfile

```ruby
gem 'monimoni'
```

Then run

```bash
$ rails generate monimoni:install
$ bundle exec rake db:migrate
```

That's it.

Alive monitoring endpoint will be mounted at `/monimoni/alive` and you can hit it manually, or by using alive monitoring systems such as Zabbix.

You'll get json response:

```json
{'hostname': 'foo'}
```

if all of your system stack is working properly.

License
---

Released under the MIT-LICENSE.

