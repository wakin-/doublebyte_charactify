require "doublebyte_charactify/version"
require "doublebyte_charactify/convert"
require "doublebyte_charactify/convert_random"
require "doublebyte_charactify/convert_lang"
require "doublebyte_charactify/statuses_controller"

module DoubleByteCharactify
  def self.setup(&proc)
    # create function for Monkey patch
    extend self
    (
    class << self;
      self
    end).module_eval do
      define_method 'convert_toot', &proc
      # define_method 'b' do
      #   p 'b'
      # end
    end

    # Monkey patch
    Api::V1::StatusesController.prepend(ApiV1StatusesControllerPatch)
  end
end

