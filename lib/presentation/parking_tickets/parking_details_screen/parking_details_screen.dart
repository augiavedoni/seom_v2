import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:seom_v2/domain/parking_tickets/entities/parking_ticket.dart';
import 'package:seom_v2/presentation/common_widgets/custom_app_bar.dart';
import 'package:seom_v2/presentation/common_widgets/rounded_button.dart';
import 'package:seom_v2/presentation/parking_tickets/parking_details_screen/widgets/parking_location.dart';
import 'package:seom_v2/presentation/parking_tickets/widgets/visualize_receipt_button.dart';
import 'package:seom_v2/presentation/routes/router.gr.dart';

part 'widgets/parking_ticket_detail.dart';

class ParkingDetailsScreen extends StatelessWidget {
  ParkingDetailsScreen({
    super.key,
    required this.parkingTicket,
    required this.isPaying,
  }) : showParkingLocation = parkingTicket.longitude.isValid() &&
            parkingTicket.latitude.isValid();

  final ParkingTicket parkingTicket;
  final bool showParkingLocation;
  final bool isPaying;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return WillPopScope(
      onWillPop: () async => !isPaying,
      child: Scaffold(
        appBar: CustomAppBar(
          title: isPaying ? 'Pagar estacionamiento' : 'Detalles',
          showBackButton: !isPaying,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(NavigationToolbar.kMiddleSpacing),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Text(
                      'A continuación podrás ver los detalles de tu estacionamiento:',
                      style: theme.textTheme.headline6,
                    ),
                    const SizedBox(
                      height: NavigationToolbar.kMiddleSpacing,
                    ),
                    _ParkingTicketDetail(
                      icon: Icons.drive_eta_rounded,
                      label: 'Vehículo: ',
                      information: parkingTicket.licensePlate.getOrCrash(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _ParkingTicketDetail(
                      icon: Icons.calendar_today_outlined,
                      label: 'Día: ',
                      information: DateFormat('dd-MM-yyyy').format(
                        parkingTicket.date.getOrCrash(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _ParkingTicketDetail(
                      icon: Icons.arrow_forward_rounded,
                      label: 'Hora de inicio: ',
                      information:
                          parkingTicket.startTime.getOrCrash().format(context),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _ParkingTicketDetail(
                      icon: Icons.arrow_back_rounded,
                      label: 'Hora de finalización: ',
                      information:
                          parkingTicket.endTime.getOrCrash().format(context),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _ParkingTicketDetail(
                      icon: Icons.paid_rounded,
                      label:
                          isPaying ? 'Monto a pagar: \$ ' : 'Monto pagado: \$ ',
                      information: parkingTicket.receipt.amount.getOrCrash(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    showParkingLocation
                        ? ParkingLocation(
                            latitude: parkingTicket.latitude.getOrCrash(),
                            longitude: parkingTicket.longitude.getOrCrash(),
                          )
                        : const SizedBox(),
                    const SizedBox(
                      height: NavigationToolbar.kMiddleSpacing,
                    ),
                    _ParkingTicketDetail(
                      icon: Icons.payment_rounded,
                      label: 'Medio de pago: ',
                      information: parkingTicket.receipt.hasGeneratedReceipt
                          ? 'Tarjeta'
                          : 'Saldo',
                    ),
                    const Spacer(),
                    isPaying
                        ? RoundedButton.fill(
                            text: 'Continuar',
                            onPressed: () => context.router.push(
                              PaymentMethodChooserScreenRoute(
                                parkingTicketId: parkingTicket.id,
                              ),
                            ),
                          )
                        : parkingTicket.receipt.hasGeneratedReceipt
                            ? VisualizeReceiptButton(
                                receipt: parkingTicket.receipt,
                              )
                            : const SizedBox(),
                    const SizedBox(height: NavigationToolbar.kMiddleSpacing),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
