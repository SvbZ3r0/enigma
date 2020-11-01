import requests

for i in ['n','d']:
	for j in range(1,51):
		URL = f'http://openweathermap.org/img/wn/{j:02}{i}@2x.png'
		try:
			r = requests.get(URL, stream=True)
			r.raise_for_status()
		except:
			continue
		print(f'{j:02}{i}.png')
		with open(f'{j:02}{i}.png', 'wb') as f:
			for chunk in r:
				f.write(chunk)