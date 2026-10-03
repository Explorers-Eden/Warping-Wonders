##stagger the repeating loops so they do not all run on the same tick
schedule function wawo:waypoint_hub/properties/teleport/init 4t
schedule function wawo:portal_horn/accept/init 6t
schedule function wawo:portal_horn/send/init 6t
schedule function wawo:waypoint_hub/properties/lock/init 6t
schedule function wawo:waypoint_hub/properties/ambient_particles 10t
schedule function wawo:waypoint_hub/properties/announcement/init 13t
schedule function wawo:clock/modify/init 15t
schedule function wawo:compass/modify/init 15t
schedule function wawo:recovery_compass/modify/init 15t
schedule function wawo:waypoint_hub/properties/rotate 15t
