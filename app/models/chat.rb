class Chat < ApplicationRecord
    after_create_commit { broadcast_update_to('chats', target: 'chats', locals: { chat: self }) }
end
