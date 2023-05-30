# frozen_string_literal: true
class UsersController < ApplicationController
  soap_service namespace: 'urn:WashOutUser', camelize_wsdl: :lower

  soap_action 'emails',
              args: {},
              return: [:string]
  def emails
    require 'uri'
    require 'net/http'

    uri = URI('http://host.docker.internal:5000/emails')
    res = Net::HTTP.get_response(uri)
    emails_list = JSON.parse(res.body)

    render soap: emails_list if res.is_a?(Net::HTTPSuccess)
  end
end
