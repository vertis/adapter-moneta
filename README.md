# adapter-moneta
This is a simple bridge between [https://github.com/jnunemaker/adapter](https://github.com/jnunemaker/adapter) and [https://github.com/minad/moneta](https://github.com/minad/moneta). 

__WHY?__ you might ask!
[Adapter](https://github.com/jnunemaker/adapter) is the basis of [Toystore](https://github.com/jnunemaker/toystore), [Moneta](https://github.com/minad/moneta) has far more backends defined.

For example, we can then do:
```
require 'pp'
require 'adapter/moneta'
require 'toystore'
# must also have the sqlite3 gem for moneta

class User
  include Toy::Store
  adapter :moneta, Moneta.new(:Sqlite, :file => 'db/kv.sqlite3')

  attribute :name, String
end

ids = []

user = User.create(:name => 'John')

pp user
pp User.read(user.id)

user.destroy
pp User.read(user.id)
```