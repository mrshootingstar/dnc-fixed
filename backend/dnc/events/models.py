from django.db import models
from django.contrib.auth import get_user_model

from django.utils import timezone

User = get_user_model()
from django.conf import settings


class Events(models.Model):
    id = models.IntegerField(primary_key=True)
    status = models.TextField(blank=True, null=True)  # This field type is a guess.
    start_date = models.TextField(blank=True, null=True)  # This field type is a guess.
    end_date = models.TextField(blank=True, null=True)  # This field type is a guess.
    description = models.TextField(blank=True, null=True)  # This field type is a guess.
    official = models.BooleanField(blank=True, null=True)
    visibility = models.TextField(blank=True, null=True)  # This field type is a guess.
    guests_can_invite_others = models.BooleanField(blank=True, null=True)
    modified_date = models.TextField(blank=True, null=True)  # This field type is a guess.
    created_date = models.TextField(blank=True, null=True)  # This field type is a guess.
    participant_count = models.TextField(blank=True, null=True)  # This field type is a guess.
    reason_for_private = models.TextField(blank=True, null=True)  # This field type is a guess.
    order_email_template = models.TextField(blank=True, null=True)  # This field type is a guess.
    name = models.TextField(blank=True, null=True)  # This field type is a guess.
    users = models.ManyToManyField(User, through='RSVP')

    class Meta:
        db_table = 'events'
        verbose_name_plural = "events"
        ordering = ['start_date']

    def __str__(self):
        return str(self.name or "Event")

class RSVP(models.Model):
    YES = 'YES'
    NO = 'NO'
    ANSWERS = (
        (YES, 'Yes'),
        (NO, 'No'),
    )
    answer = models.CharField(
        max_length=5,
        choices=ANSWERS,
        default=NO,
    )
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    event = models.ForeignKey('Events', on_delete=models.CASCADE)

    def __str__(self):
        return str("{} RSVP'ed' {} for event '{}'".format(self.user, self.answer, self.event))

class Locations(models.Model):
    id = models.IntegerField(primary_key=True)
    event_id = models.IntegerField(blank=True, null=True)
    contact_phone = models.TextField(blank=True, null=True)  # This field type is a guess.
    primary = models.BooleanField(blank=True, null=True)
    contact_email = models.TextField(blank=True, null=True)  # This field type is a guess.
    contact_family_name = models.TextField(blank=True, null=True)  # This field type is a guess.
    contact_given_name = models.TextField(blank=True, null=True)  # This field type is a guess.
    host_given_name = models.TextField(blank=True, null=True)  # This field type is a guess.
    timezone = models.TextField(blank=True, null=True)  # This field type is a guess.
    city = models.TextField(blank=True, null=True)  # This field type is a guess.
    locality = models.TextField(blank=True, null=True)  # This field type is a guess.
    state = models.TextField(blank=True, null=True)  # This field type is a guess.
    address_type = models.TextField(blank=True, null=True)  # This field type is a guess.
    latitude = models.TextField(blank=True, null=True)  # This field type is a guess.
    longitude = models.TextField(blank=True, null=True)  # This field type is a guess.
    accuracy = models.TextField(blank=True, null=True)  # This field type is a guess.
    address1 = models.TextField(blank=True, null=True)  # This field type is a guess.
    address2 = models.TextField(blank=True, null=True)  # This field type is a guess.
    postal_code = models.TextField(blank=True, null=True)  # This field type is a guess.
    country = models.TextField(blank=True, null=True)  # This field type is a guess.
    modified_date = models.TextField(blank=True, null=True)  # This field type is a guess.
    created_date = models.TextField(blank=True, null=True)  # This field type is a guess.
    number_spaces_remaining = models.TextField(blank=True, null=True)  # This field type is a guess.
    spaces_remaining = models.BooleanField(blank=True, null=True)
    name = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        db_table = 'locations'

    def __str__(self):
        return self.name 