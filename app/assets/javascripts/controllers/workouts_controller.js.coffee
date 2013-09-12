EmberWorkouts.WorkoutsController = Ember.ArrayController.extend

  actions:
    editWorkout: (workout) ->
      workout.set('isEditing', true)

    createWorkout: ->
      title = @get('newWorkoutName')

      workout = @store.createRecord('workout', title: title)
      @set('newWorkoutName', '')
      workout.save()

    updateWorkout: (workout) ->
      workout.set('isEditing', false)
      workout.save()

  isEditing: false
