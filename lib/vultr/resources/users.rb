module Vultr
  class UsersResource < Resource
    def list(per_page: nil, cursor: nil)
      params = {per_page: per_page, cursor: cursor}.compact
      Collection.from_response get_request("users", params: [params]), key: "users", type: User
    end

    def create(**attributes)
      User.new post_request("users", body: attributes).body.dig("user")
    end

    def retrieve(user_id:)
      User.new get_request("users/#{user_id}").body.dig("user")
    end

    def update(user_id:, **attributes)
      patch_request("users/#{user_id}", body: attributes)
      true
    end

    def delete(user_id: )
      delete_request("users/#{user_id}")
      true
    end
  end
end

