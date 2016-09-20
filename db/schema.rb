# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160919210356) do

  create_table "actors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.string   "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "titre"
    t.text     "article"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", force: :cascade do |t|
    t.string   "titre"
    t.text     "synopsis"
    t.date     "date_sortie"
    t.string   "Producteur"
    t.string   "note"
    t.string   "casting"
    t.string   "origine"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "indices", force: :cascade do |t|
    t.integer  "films_id"
    t.integer  "actors_id"
    t.integer  "articles_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "indices", ["actors_id"], name: "index_indices_on_actors_id"
  add_index "indices", ["articles_id"], name: "index_indices_on_articles_id"
  add_index "indices", ["films_id"], name: "index_indices_on_films_id"

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.string   "release_year"
    t.string   "plot"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "parts", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "parts", ["actor_id"], name: "index_parts_on_actor_id"
  add_index "parts", ["movie_id"], name: "index_parts_on_movie_id"

end
