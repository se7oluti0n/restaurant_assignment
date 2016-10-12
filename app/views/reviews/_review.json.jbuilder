json.extract! review, :id, :user, :star, :comment, :food_item_id, :created_at, :updated_at
json.url review_url(review, format: :json)