# frozen_string_literal: true

require_relative "vultr/version"

module Vultr
  autoload :Client, "vultr/client"
  autoload :Error, "vultr/error"
end
