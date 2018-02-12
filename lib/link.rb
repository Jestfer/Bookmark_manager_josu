require 'pg'

class Link
  def self.all
    # Data mapper will enable us to stop establishing
    # connections - We get the methods 'for free'
    # Creates instance and saves it into the DB
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM links")
    result.map { |hash| hash['url'] }
  end
end
