# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		#use the existing token.
		File.read(token_file).chomp
	else
		#Generate a new token and sotre it in the token_file
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token 
	end
end
Smoothchair::Application.config.secret_key_base = '16e4a2ff5a0d5d235ff6ee0100fefa3cf0dd724d949d8fed47236e1c76946aa8f8dabdb1a3ffaa86f57fae6298ba4f95cef0b1682eab97193809199519e6197a'
