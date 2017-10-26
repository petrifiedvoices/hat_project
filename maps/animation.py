import csv
from collections import defaultdict

startyear = 10000
endyear = -10000


dates = defaultdict(list)

with open('hat2.csv') as csvfile:
	fieldnames = ["Heurist ID","Longitude","Latitude","Start Year","End Year"]

	foo = csv.DictReader(csvfile, delimiter=',', fieldnames=fieldnames)
	for row in foo:
		if row['Start Year'] and row['End Year']:
			row['start'] = int(row['Start Year'])
			row['end'] = int(row['End Year'])+1
			if startyear > row['start']:
				startyear=row['start']
			if endyear < row['end']:
				endyear=row['end']

			for year in range (row['start'], row['end']):
				span = 800
				if abs(row['start']-row['end']) < 100:
					span=100
				elif abs(row['start']-row['end']) < 200:
					span=200
				

				dates[year].append([row['Heurist ID'], row['Longitude'], row['Latitude'], year, span])


print(startyear, endyear)
with open('byYearAll.csv', 'w') as csvfile:
	csvwriter = csv.writer(csvfile, quoting=csv.QUOTE_MINIMAL)
	csvwriter.writerow(['HeuristID', 'Longitude', 'Latitude', 'Year', 'Span'])
	for year in range(startyear, endyear+1):
		for row in dates[year]:
			csvwriter.writerow(row)