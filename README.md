###Fetching emails from pop3 server

For getting emails from server /config/initializers/mail_config.rb should be edited:

```ruby
Mail.defaults do
  retriever_method :pop3, :address    => "<server_address>",
                   :port       => <port>,
                   :user_name  => '<username>',
                   :password   => '<password>',
                   :enable_ssl => true
end
```