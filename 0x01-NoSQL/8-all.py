#!/usr/bin/env python3
""" Using pymongo for MongoDB practices"""


def list_all(mongo_collection):
    """ List all documents in Python """
    documents = mongo_collection.find()

    if documents.count() == 0:
        return []

    return documents
