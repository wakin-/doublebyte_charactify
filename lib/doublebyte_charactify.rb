require "doublebyte_charactify/version"
require "doublebyte_charactify/convert"
require "doublebyte_charactify/status_serializer"

module DoublebyteCharactify
  def self.setup(&proc)
    # create function for Monkey patch
    extend self
    (
    class << self;
      self
    end).module_eval do
      define_method 'convert_content', &proc
      # define_method 'b' do
      #   p 'b'
      # end
    end

    # Monkey patch
    REST::StatusSerializer.prepend(RESTStatusSerializerPatch)
  end
end

