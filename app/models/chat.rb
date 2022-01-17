class Chat < ApplicationRecord
    after_create_commit { broadcast_append_to('chats', target: 'chats', locals: { chat: self }) }
end
