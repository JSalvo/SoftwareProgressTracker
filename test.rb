require 'active_record'

# Change the following to reflect your database settings
ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3', # or 'postgresql' or 'sqlite3' or 'oracle_enhanced'
  database: './db/development.sqlite',
  #host:     'localhost',
  #username: 'your_username',
  #password: 'your_password'
)

# Define your classes based on the database, as always
class Test < ActiveRecord::Base
end

# Now do stuff with it
t = Test.new
t.description = "Primo Messaggio"
t.save
