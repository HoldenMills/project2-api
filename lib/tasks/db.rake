require 'csv'
#terminal command: rails g task db parks
#terminal command: rake -T db:populate

namespace :db do
  namespace :populate do
    desc 'Fill the database with example data'
    task all: [:parks, :users, :profiles, :future_trips]
      desc 'Fill the parks table with example data'
      task parks: :environment do
      Park.transaction do
        CSV.foreach(Rails.root + 'data/small_parks.csv',
            headers: true) do |park_row|
          park = park_row.to_hash
          next if Park.exists? park
          Park.create! park
        end
      end
    end

    desc 'Fill the users table with example data'
    task users: :environment do
      User.transaction do
        CSV.foreach(Rails.root + 'data/users.csv',
            headers: true) do |user_row|
          user = user_row.to_hash
          next if User.exists? user
          User.create! user
        end
      end
    end

    desc 'Fill the profiles table with example data'
    task profiles: :environment do
      Profile.transaction do
        CSV.foreach(Rails.root + 'data/profiles.csv',
            headers: true) do |profile_row|
          profile = profile_row.to_hash
          next if Profile.exists? profile
          Profile.create! profile
        end
      end
    end

    desc 'Fill the future_trips table with example data'
    task future_trips: :environment do
      FutureTrip.transaction do
        CSV.foreach(Rails.root + 'data/future_trips.csv',
            headers: true) do |future_trip_row|
          future_trip = future_trip_row.to_hash
          next if FutureTrip.exists? future_trip
          FutureTrip.create! future_trip
        end
      end
    end

    desc 'Fill the past_places table with example data'
    task past_places: :environment do
      PastPlace.transaction do
        CSV.foreach(Rails.root + 'data/past_places.csv',
            headers: true) do |past_place_row|
          past_place = past_place_row.to_hash
          next if PastPlace.exists? past_place
          PastPlace.create! past_place
        end
      end
    end
  end
end
