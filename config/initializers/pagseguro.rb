PagSeguro.configure do |config|
  if Rails.env.production?
    config.environment = :production
    config.token       = ENV['PAGSEGURO_TOKEN']
    config.email       = ENV['PAGSEGURO_EMAIL']
  else
    config.environment = :sandbox  # ou :sandbox. O padrão é production.
    config.token       = '634FFD64ABE540A39E1F354FF591FDCA'
    config.email       = 'rayanesantos-131@hotmail.com'
  end
  config.encoding    = "UTF-8" # ou ISO-8859-1. O padrão é UTF-8.
end

