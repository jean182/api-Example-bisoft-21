class StaticController < ApplicationController
  def home
    @endpoints = {
      "Home" => "/",
      "books GET/POST" => "/books",
      "book GET/PUT/PATCH/DELETE" => "/book/:id",
      "authors GET/POST" => "/authors",
      "author GET/PUT/PATCH/DELETE" => "/book/:id"
    }
    render json: @endpoints
  end
end
