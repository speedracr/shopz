Rails.configuration.stripe = {
  :publishable_key => "pk_test_RnrJ1IsTfA9N7lsKd1mWYa5x",
  :secret_key      => "sk_test_oW5NOH4OyZsO9t7dq4P4rcOT"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]