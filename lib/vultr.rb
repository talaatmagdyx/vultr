# frozen_string_literal: true

require_relative "vultr/version"

module Vultr
  autoload :Client, "vultr/client"
  autoload :Collection, "vultr/collection"
  autoload :Object, "vultr/object"
  autoload :Error, "vultr/error"
  autoload :Resource, "vultr/resource"

  autoload :Account, "vultr/objects/account"
  autoload :Instance, "vultr/objects/instance"
  autoload :Plan, "vultr/objects/plan"
  autoload :User, "vultr/objects/user"


  autoload :AccountResource, "vultr/resources/account"
  autoload :PlansResource, "vultr/resources/plans"
  autoload :UsersResource, "vultr/resources/users"


end
