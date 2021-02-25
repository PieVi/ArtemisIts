#!/usr/bin/env python3

import csv

class Adjacency(object):
    def __init__(self,object_id,priority,distance,tier,attempts,hosr):
        self.object_id=object_id
        self.priority=priority
        self.distance=distance
        self.tier=tier
        self.attempts=attempts
        self.hosr=hosr

def createAdjacencyListFromFile(filename):
    entries = []
    with open(filename) as f:
        reader = csv.DictReader(f)
        for row in reader:
            entry = Adjacency(
                row['object_id'],
                row['priority'],
                row['distance'],
                row['tier'],
                row['attempts'],
                row['hosr']
            )
            entries.append(entry)
    return entries

def sortedByPriority(entries):
    return sorted(entries, key = lambda x : x.priority)
