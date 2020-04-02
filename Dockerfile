FROM python:3.7-buster

# 设置工作目录
RUN mkdir /app
WORKDIR /app

COPY scrapydweb_settings_v10.py /app/scrapydweb_settings_v10.py
# 安装包
RUN pip install scrapydweb -i https://pypi.douban.com/simple/

EXPOSE 5000
CMD ["scrapydweb"]