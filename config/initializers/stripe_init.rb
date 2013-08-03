Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_PUBLIC'],
  :secret_key      => ENV['STRIPE_SECRET']
}

Stripe.api_key = "sk_test_cJQzROjrK9TQz7EtOq34wFOO"

# Rails.configuration.stripe[:secret_key]
# removed //= require stripe from application.js