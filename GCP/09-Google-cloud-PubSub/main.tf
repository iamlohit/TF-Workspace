# PubSub 101:
#     When you want to decouple two systems but enable asynchronous communication between those systems.
#     It works by creating a Publisher Topic.
#     The Subscriber subscribes to the Topic.
#     Whenever we want to share information with the subscriber, we just add it to Topic and Subscribers recieve it.
#     There are two types of delivery of this message:
#       A. Pull - This means the subscriber has to manually pull for any new messages from the Publisher topic.
#       B. Push - This means the Publisher topic will automatically push any new messages to a Subscriber's endpoint URL.
#     These messages can be retained for upto 7 days, but it depends on the implementation/platform.
#     Schemas: The message can be formatted to a specific schema that needs to be ahered by the publisher like json.
#       Without this, we can have free form messages as well, but that is rarely useful.

