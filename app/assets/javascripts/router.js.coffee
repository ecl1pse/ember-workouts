# For more information see: http://emberjs.com/guides/routing/
EmberWorkouts.Router.map ->
  @resource "workouts", ->
    @resource "workout", path: ":workout_id"

EmberWorkouts.WorkoutsRoute = Ember.Route.extend
  model: -> @store.findAll('workout')

EmberWorkouts.WorkoutRoute = Ember.Route.extend
  model: (params) -> @store.find('workout', params.workout_id)
