# -*- coding: utf-8 -*-
"""
Created on Sat Nov 30 12:11:58 2013

@author: christopher
"""

from cloudmade import api, geocoding, routing, utils

import pandas
import time
reader = pandas.read_table("R/Miami-2014-LBT-Receipts/tax_addresses.csv", sep=",", nrows = 4)
cm = api.API(apikey='e8553faaf7b547ceb2a2a5050653006c', referrer='http://github.com/statwonk/miami-2014-lbt-receipts')

# for chunk in reader:
#    time.sleep(8)
first = np.array(reader)[3:4]
dat = cm.find(geocoding.Query('San Francisco'))

first[0:1][0][2]
# dat['features'][0]['centroid']['coordinates']

datareader = csv.reader("tax_addresses.csv")
