require "rolingo/version"
require "java"
require "rolingo_jars"
require "pry"
java_import "org.apache.olingo.client.core.ODataClientFactory"

module Rolingo
  class Error < StandardError; end


  class Client
    def initialize(url:)
      @url = url
      @odata_client = ODataClientFactory.get_client()
    end

    def get_entity(id:, lang: "de")
      binding.pry
    end
  end
end
