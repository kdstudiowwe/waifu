class Config(object):
    LOGGER = True

    # Get this value from my.telegram.org/apps
    OWNER_ID = "5145571188"
    sudo_users = "5145571188"
    TOKEN = "7377318615:AAFF6RAkE_ETiHXEZm-Ks94qQ6OdQYHlee8"
    mongo_url = "mongodb+srv://studiobros130:tWMsnK1aLZ7CdQRB@cluster0.0ybjq.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
    PHOTO_URL = ["https://t.me/c/2465182738/3?single"]
    SUPPORT_CHAT = "monarch_beach"
    UPDATE_CHAT = "monarch_beach"
    BOT_USERNAME = "Waifugrabbers_bot"
    CHARA_CHANNEL_ID = "-1002465182738"
    api_id = 22436505
    api_hash = "a8ca5461ae3754aa203ad2021ad0d8f8"

    
class Production(Config):
    LOGGER = True


class Development(Config):
    LOGGER = True
