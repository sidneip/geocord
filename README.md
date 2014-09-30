GeoCord
=========

Gem para retornar a latitude e Longitude de acordo com o endereço.
  
  - Facil utilização.
  - Versão de teste.
  - Contribua.

Futuras implementações:

- Retornar todas as geolocalizações encontradas em um array.
- Retornar endereço de latitude e longitude
- Evoluir testes.
> Contribua...


Version
----

0.0.2

Tech
-----------

GoogleAPI

Installation
--------------

```sh
gem 'geocord'

bundle

Ou

$ gem install geocord
rails console
require 'geocord'
address = Geocord.process('pituba')
 => [{:endereco=>"Pituba - Rio Grande do Norte, Brazil", :latitude=>-5.983333, :longitude=>-35.4166669}, {:endereco=>"Pituba - Bahia, Brazil", :latitude=>-11.6775581, :longitude=>-42.7225256}, {:endereco=>"Pituba - Rio Grande do Norte, Brazil", :latitude=>-6.4960844, :longitude=>-35.0051338}, {:endereco=>"Pituba, Salvador - State of Bahia, Brazil", :latitude=>-13.0025439, :longitude=>-38.4566915}]
2.1.2 :012 > address.first[:endereco]
 => "Pituba - Rio Grande do Norte, Brazil"
```

License
----

MIT

**Free Software, Hell Yeah!**


Contributors
--------------
[Sidnei Pacheco](https://github.com/sidneip)

