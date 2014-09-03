== README

App Prereqs:

1. [Java 7](http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html)
1. JRuby
  * via [RVM](http://rvm.io/)
    * Install RVM: `curl -sSL https://get.rvm.io | bash -s stable`
    * Install latest JRuby: `rvm install jruby`
1. Elasticsearch
  * via [Homebrew](http://brew.sh/)
    * Install Homebrew: `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`
    * Install Elasticsearch: `brew install elasticsearch`
  * Start Elasticsearch: `elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml`
1. Rails setup (development mode)
  * `bundle install`
  * `rake db:migrate`
  * `rake db:seed`
  * `rails s`

Optional/Misc:

1. Homebrew cellar directory (/usr/local/Cellar): `brew config | grep -i ^HOMEBREW_CELLAR | awk '{print $2}'`
1. Install Elasticsearch head plugin
  * Plugins dir (/usr/local/var/lib/elasticsearch/plugins/): `brew info elasticsearch | grep -i ^Plugins: | awk '{print $2}'`
  * Elasticsearch dir (/usr/local/Cellar/elasticsearch/1.3.2): `brew info elasticsearch | head -3 | tail -1 | awk '{print $1}'`
  * cd /usr/local/Cellar/elasticsearch/1.3.2 && bin/plugin -install mobz/elasticsearch-head
  * Browse to: http://localhost:9200/_plugin/head/
