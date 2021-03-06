require 'rails_helper'

RSpec.describe 'Books API', type: :request do
  # initialize test data
  let(:user) { create(:user) }
  let!(:books) { create_list(:book, 10, user_id: user.id) }
  let(:book_id) { books.first.id }
  let(:headers) { valid_headers }

  describe 'GET /books' do
    before { get '/books', params: {}, headers: headers }

    it 'returns books' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /books/:id' do
    before { get "/books/#{book_id}", params: {}, headers: headers }

    context 'when the book exist' do
      it 'returns the book' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(book_id)
      end

      it 'returns 200 status code' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the book does not exist' do
      let(:book_id) { 100 }

      it 'returns a 404 status code' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Book/)
      end
    end
  end

  describe 'POST /books' do
    let(:valid_attributes) do
      { title: 'Book 1', author: 'Author 1', percentage: 1, category_id: 1, user_id: 1 }.to_json
    end

    context 'when the request is valid' do
      before { post '/books', params: valid_attributes, headers: headers }

      it 'creates a todo' do
        expect(json['title']).to eq('Book 1')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      let(:invalid_attributes) { { title: nil }.to_json }
      before { post '/books', params: invalid_attributes, headers: headers }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match(/Validation failed: Category must exist, Title can't be blank, Percentage is not a number/)
      end
    end
  end

  describe 'PUTS /books/:id' do
    let(:valid_attributes) { { title: 'shopping' }.to_json }

    context 'when the record exists' do
      before { put "/books/#{book_id}", params: valid_attributes, headers: headers }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe 'DELETE /books/:id' do
    before { delete "/books/#{book_id}", params: {}, headers: headers }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
