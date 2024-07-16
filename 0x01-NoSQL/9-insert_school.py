#!/usr/bin/env python3
""" Using pymongo for MongoDB operations"""


def insert_school(mongo_collection, **kwargs):
    """ Inserts a new document in a collection based on kwargs """
    document_id = mongo_collection.insert(kwargs)
    return document_id
