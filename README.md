## Goal of the project
The intent of the project is to provide for hadith searchers a sophisticated way to look for hadiths and give a score based on what is
already done on Hadith books.

We aim to provide a well structured database of texts reported to Prophet Mohamed SAWS that enhance searching in content and people that


## Terminology
- **MATN**= content of the "REWAYA"
- **SANAD**= people involved in the path until Prophet Mohamed SAWS
- **RAWI**= person having at least one **REWAYA**
- **REWAYA**= **MATN** + **SANAD**

## Main use cases
- Look for a specific **MATN** and its similar in the the database and display all **SANAD**s
- display all **MATN**s from a specific **RAWI**
- ???

## OPEN questions:
- Which technology to use? => kotlin (nice language features)
- First version supported version ?
- Contribution and administration model and rights
- **RAWI** score evaluation ?
- **SANAD** score evaluation ?
- Identitification of **RAWI** ?
- Supported UIs (browser, mobile(Android, iOS, ..), Desktop) ?



## What is the service we offer
A query framework for hadeeth
- hadeeths are clustered as classes, of different forms of a hadeeths
- by searching for a hadeeth (part of hadeeth) you'll get all similar ahadeeth/ class of hadeeth
- you get hadeeth accuracy according to different conditions (boukhari, muslem, imam ahmed...)
- you can select a rawi and get all the riwayat coming through him
- you can select a route (set of rowat), and find all hadeeths coming through them.

## UI

- Search similar hadeeth
- Search rawi
- Search by rawi route
- calculate hadeeth authencity using routes or rawi authencity using riwyat. 
