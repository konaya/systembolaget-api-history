#!/bin/bash
cd $(dirname $0)
curl -s https://www.systembolaget.se/api/assortment/products/xml | tidy -xml -i -q > products.xml
curl -s https://www.systembolaget.se/api/assortment/stores/xml | tidy -xml -i -q > stores.xml
curl -s https://www.systembolaget.se/api/assortment/stock/xml | tidy -xml -i -q > stock.xml
git add products.xml stores.xml stock.xml
git commit -m "$(date)"
