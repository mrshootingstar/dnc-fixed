from django.contrib import admin
from events.models import Events, RSVP

admin.site.register(Events)
admin.site.register(RSVP)




# from events.models import (
#     Group,
#     Membership,
#     Member
# )

# admin.site.register(Group)
# admin.site.register(Member)
# admin.site.register(Membership)