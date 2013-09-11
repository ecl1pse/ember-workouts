# For more information see: http://emberjs.com/guides/routing/

EmberWorkouts.Router.map ->
  @resource "workouts"

EmberWorkouts.WorkoutsRoute = Ember.Route.extend
  model: -> EmberWorkouts.Workout.find()
