# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

1.times do
  ActiveRecord::Base.connection.execute <<-SQL
    INSERT INTO users (name,country,score,created_at,updated_at) VALUES
    #{UserGenerator.generate(100_000)}
  SQL
end

ActiveRecord::Base.connection.execute <<-SQL
  CREATE INDEX users_name ON users(name);
  CREATE INDEX users_country ON users(country);
  CREATE INDEX users_score ON users(score);
SQL
