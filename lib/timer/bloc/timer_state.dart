part of 'timer_bloc.dart';

sealed class TimerState extends Equatable {
  /// [TimerState] is the base class for all states in the timer_bloc.
  /// [TimerInitial] is the initial state of the timer_bloc.
  /// [TimerRunPause] is the state when the timer is paused.
  /// [TimerRunInProgress] is the state when the timer is running.
  /// [TimerRunComplete] is the state when the timer has completed.
  /// [TimerState] is a sealed class, meaning that it cannot be extended outside of this file.
  
  const TimerState(this.duration);
  final int duration;

  @override
  List<Object> get props => [duration];
}

final class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() => 'TimerInitial { duration: $duration }';
}

final class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);

  @override
  String toString() => 'TimerRunPause { duration: $duration }';
}

final class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

final class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}