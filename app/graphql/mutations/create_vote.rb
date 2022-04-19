module Mutations
  class CreateVote < BaseMutation
    # TODO: define arguments
    argument :link_id, ID, required: false

    type Types::VoteType

    # TODO: define resolve method
    def resolve(link_id: nil)
      Vote.create!(
        link: Link.find(link_id),
        user: context[:current_user]
      )
    end
  end
end
