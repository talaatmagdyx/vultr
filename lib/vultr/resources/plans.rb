module Vultr
  class PlansResource < Resource
    def list(per_page: nil, cursor: nil)
      Collection.from_response get_request("plans", params: {per_page: per_page, cursor: cursor}.compact),
                               key: "plans", type: Plan
    end
  end
end

