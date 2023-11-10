import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/core/network_exceptions.dart';
import 'package:bebunge/src/network/model/kartu_kuning/booking/booking_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/quota/quota_mod.dart';
import 'package:bebunge/src/network/repositories/booking_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_event.dart';
part 'booking_state.dart';
part 'booking_bloc.freezed.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc() : super(const BookingState.initial()) {
    on<BookingEvent>((event, emit) async {
      await event.when(
        booking: (date) async {
          emit(BookingState.loading());
          ApiResult<BookingMod> result =
              await BookingRepositoryImpl().booking(date: date);
          result.when(
            success: (data) => emit(BookingState.success(data)),
            failure: (error) => (error) => emit(BookingState.error(error)),
          );
        },
        checkBooking: (code) async {
          emit(BookingState.loading());
          ApiResult<BookingMod> result =
              await BookingRepositoryImpl().checkBooking(code: code);
          result.when(
            success: (data) => emit(BookingState.success(data)),
            failure: (error) => (error) => emit(BookingState.error(error)),
          );
        },
        showCodeDialog: (code) {
          emit(BookingState.showCodeDialog(code));
        },
        checkQuota: () async {
          emit(BookingState.loading());
          ApiResult<QuotaMod> result =
              await BookingRepositoryImpl().checkQuota();

          result.when(
            success: (data) => emit(BookingState.quotaSuccess(data)),
            failure: (error) => emit(BookingState.error(error)),
          );
        },
      );
    });
  }
}
