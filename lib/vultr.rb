# frozen_string_literal: true

require_relative "vultr/version"

module Vultr
  autoload :Client, "vultr/client"
  autoload :Collection, "vultr/collection"
  autoload :Object, "vultr/object"
  autoload :Error, "vultr/error"

  autoload :Account, "vultr/objects/account"
  autoload :Instance, "vultr/objects/instance"
  autoload :Plan, "vultr/objects/plan"
end
