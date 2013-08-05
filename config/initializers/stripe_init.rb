require "stripe"

Rails.configuration.stripe = {
  :secret_key => ENV['STRIPE_SECRET'],
  :publishable_key => ENV['STRIPE_PUBLIC']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

# removed //= require stripe from application.js