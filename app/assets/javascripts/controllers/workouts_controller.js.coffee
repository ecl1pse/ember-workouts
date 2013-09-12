EmberWorkouts.WorkoutsController = Ember.ArrayController.extend
  actions:
    addWorkout: (name) ->
      @get('workout').save()
