# frozen_string_literal: true

require_relative "vultr/version"

module Vultr
  autoload :Client, "vultr/client"
  autoload :Object, "vultr/object"
  autoload :Error, "vultr/error"
end
