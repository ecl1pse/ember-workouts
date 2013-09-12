EmberWorkouts.WorkoutsController = Ember.ArrayController.extend
  actions:
    addWorkout: (name) ->
      EmberWorkouts.Workout.createRecord(name: 'yo')
