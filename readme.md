docker pull python:3.7-buster


sudo docker build -t lab/scrapydweb .


sudo docker run -it -p 0.0.0.0:5000:5000 --name lab_scrapydweb --link labscrapyd2:scrd -v /dockerdata/scrapydweb:/app lab/scrapydweb