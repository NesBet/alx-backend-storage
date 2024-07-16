#!/usr/bin/env python3
""" Using pymongo for MongoDB operations"""


def schools_by_topic(mongo_collection, topic):
    """ Returns the list of school having a specific topic """
    documents = mongo_collection.find({"topics": topic})
    list_docs = [d for d in documents]
    return list_docs
