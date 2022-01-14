from PIL import Image,ImageFont, ImageDraw

def add_text_to_image(img, text, font_path, font_size, font_color, height, width, max_length=1000):
    position = (width, height)
    font = ImageFont.truetype(font_path, font_size)
    draw = ImageDraw.Draw(img)
    if draw.textsize(text, font=font)[0] > max_length:
        while draw.textsize(text + '…', font=font)[0] > max_length:
            text = text[:-1]
        text = text + '…'

    draw.text(position, text, font_color, font=font)

base_img_path = "./birthdaycard.png"
base_img = Image.open(base_img_path).copy()

#相手の名前を入力
song_title = "ますだ　じゅんいち　さん"
font_path = "C:\Windows\Fonts\msgothic.ttc"
font_size = 70
font_color = (0, 0, 255)
height = 635
width = 380
img = add_text_to_image(base_img, song_title, font_path, font_size, font_color, height, width)

#相手の名前を入力
w_address = "0x2bEFdAdf34cEeF2B354EaF534FBCfDD5c4db990f"
w_address_head = w_address[0:3]
w_address_foot = w_address[-4:-1]
w_address = w_address_head + '...' + w_address_foot
font_path = "C:\Windows\Fonts\msgothic.ttc"
font_size = 20
font_color = (0, 0, 255)
height = 935
width = 380
img = add_text_to_image(base_img, w_address, font_path, font_size, font_color, height, width)

#img.save('./birthdaycard_test.png')
base_img.save("C:\\Users\\Twss9002\\Documents\\研修用プログラム\\Python\\img_generate\\card_test.png")

