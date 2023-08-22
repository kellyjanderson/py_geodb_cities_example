import os
import requests

apiURL = os.environ.get("GEODBCITIESURL")

headers = {
	"X-RapidAPI-Key": os.environ.get("APIKEY"),
	"X-RapidAPI-Host": os.environ.get("APIHOST")
}

response = requests.get(url, headers=headers)