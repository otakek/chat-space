json.user_name @messages.user.name
json.created_at @messages.created_at.strftime("%Y年%m月%d日 %H時%M分")
json.content @messages.content
json.image @messages.image_url