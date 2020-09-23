class V2::BooksController < ApplicationController
  def index
    json_response({ message: 'Hello there' })
  end
end
