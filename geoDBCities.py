import os
import requests

apiURL = os.environ.get("GEODBCITIESURL")

headers = {
	"X-RapidAPI-Key": os.environ.get("APIKEY"),
	"X-RapidAPI-Host": os.environ.get("APIHOST")
}

def getCities():
    response = requests.get(f"{apiURL}geo/cities", headers=headers)
    return response

response = getCities()

print(response.text);

