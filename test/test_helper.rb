# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "vultr"

require "minitest/autorun"
require 'json'
require 'faraday'

class Minitest::Test
  def stub_response(fixture:, status: 200, headers: {"Content-Type" => "application/json"})
    [status, headers, File.read("test/fixtures/#{fixture}.json")]
  end

  def stub_request(path:, response:, method: :get, body: {})
    Faraday::Adapter::Test::Stubs.new do |stub|
      arguments = [method, "/v2/#{path}"]
      arguments << body.to_json if [:post, :put, :patch].include?(method)

      stub.send(*arguments) {|_| response}
    end
  end
end
