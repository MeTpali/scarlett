import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_analog/di/pure_analog_di.dart';
import 'package:pure_analog/features/incognito/offer_box.dart';
import 'package:pure_analog/resources/svg_assets.dart';

import '../../resources/offers.dart';

class IncognitoPaymentModal extends ConsumerStatefulWidget {
  final VoidCallback onClose;
  const IncognitoPaymentModal({
    super.key,
    required this.onClose,
  });

  @override
  ConsumerState<IncognitoPaymentModal> createState() =>
      _IncognitoPaymentModalState();
}

class _IncognitoPaymentModalState extends ConsumerState<IncognitoPaymentModal> {
  int? maskChosen;

  void chooseOffer(int count) => setState(() {
        maskChosen = count;
      });

  void declineOffer() => setState(() {
        maskChosen = null;
      });

  @override
  Widget build(BuildContext context) {
    final buttonColor = maskChosen != null
        ? const Color(0xFFAA044A)
        : Color.lerp(const Color(0xFF0D1333), const Color(0xFFAA044A), 0.2);
    return ColoredBox(
      color: const Color(0xFF0D1333),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 21, 21, 16),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Column(
                children: [
                  SvgPicture.asset(
                    SvgAssets.maskMain,
                    height: 65,
                    width: 170,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Режим инкогнито на 24 часа'.toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xFFF6F4F4),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Стань невидимкой в ленте и чатах, скрой объявление и наслаждайся <Space> незамеченным',
                    style: TextStyle(
                      color: Color(0xFFBCB3B3),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 90,
                    child: Row(
                      children: [
                        Expanded(
                          child: OfferBox(
                            offerPadding: const EdgeInsets.only(top: 13),
                            offer: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('1'),
                                SvgPicture.asset(SvgAssets.maskAction),
                              ],
                            ),
                            description: '99 ₽',
                            onTap: () {
                              if (maskChosen == null) {
                                chooseOffer(1);
                                return;
                              }

                              if (maskChosen == 1) {
                                declineOffer();
                                return;
                              }

                              chooseOffer(1);
                            },
                            isChosen: maskChosen != null && maskChosen == 1,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: OfferBox(
                            offerPadding: const EdgeInsets.only(top: 13),
                            offer: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('3'),
                                SvgPicture.asset(SvgAssets.maskAction),
                              ],
                            ),
                            description: '199 ₽',
                            special: SvgPicture.asset(OfferAssets.hot),
                            onTap: () {
                              if (maskChosen == null) {
                                chooseOffer(3);
                                return;
                              }

                              if (maskChosen == 3) {
                                declineOffer();
                                return;
                              }

                              chooseOffer(3);
                            },
                            isChosen: maskChosen != null && maskChosen == 3,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: OfferBox(
                            offerPadding: const EdgeInsets.only(top: 13),
                            offer: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('7'),
                                SvgPicture.asset(SvgAssets.maskAction),
                              ],
                            ),
                            description: '399 ₽',
                            special: SvgPicture.asset(OfferAssets.sale),
                            onTap: () {
                              if (maskChosen == null) {
                                chooseOffer(7);
                                return;
                              }

                              if (maskChosen == 7) {
                                declineOffer();
                                return;
                              }

                              chooseOffer(7);
                            },
                            isChosen: maskChosen != null && maskChosen == 7,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: maskChosen == null
                          ? null
                          : () {
                              ref
                                  .watch(
                                    PureAnalogDi.incognitoProvider.notifier,
                                  )
                                  .addMasks(maskChosen!);
                              context.router.maybePop();
                            },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(buttonColor),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Купить',
                        style: TextStyle(
                          color: Color(0xFFF6F4F4),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      child: Text(
                        'Условия и положения'.toUpperCase(),
                        style: const TextStyle(
                          color: Color(0xFFF6F4F4),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 24,
                width: 24,
                child: IconButton(
                  onPressed: widget.onClose,
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.close,
                    color: Color(0xFF8D8D8D),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
