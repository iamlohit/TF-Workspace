# PubSub 101:
#     When you want to decouple two systems but enable asynchronous communication between those systems.
#     It works by creating a Publisher that sends messages to a Topic.
#     The Subscriber subscribes to the Topic.
#     Whenever we want to share information with the subscriber, Publisher just sends it to Topic and Subscribers recieve it.
#     There are two types of delivery of this message:
#       A. Pull - This means the subscriber has to manually pull for any new messages from the topic.
#       B. Push - This means the topic will automatically push any new messages to a Subscriber's endpoint URL.
#     These messages can be retained for upto 7 days, but it depends on the implementation/platform.
#     Schemas: The messages can be formatted to a specific schema that needs to be adhered by the publisher like json or Proto Buff(data converted to binary).
#       Without this, we can have free form messages as well, but that is rarely useful.

