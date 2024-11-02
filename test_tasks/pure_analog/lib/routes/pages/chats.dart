import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i18n/i18n.dart';
import 'package:pure_analog/di/pure_analog_di.dart';
import 'package:pure_analog/features/chats/tile.dart';
import 'package:pure_analog/features/incognito/payment_modal.dart';
import 'package:pure_analog/features/likes/tile.dart';
import 'package:pure_analog/features/modals/bottom.dart';
import 'package:pure_analog/resources/images.dart';
import 'package:pure_analog/resources/mock_images.dart';
import 'package:pure_analog/resources/svg_assets.dart';
import 'package:pure_analog/routes/router.dart';
import 'package:topg/topg.dart';

@RoutePage()
class ChatsPage extends ConsumerWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topgTheme = TopGTheme.of(context);

    final incognito = ref.watch(PureAnalogDi.incognitoProvider);
    final incognitoNotifier =
        ref.watch(PureAnalogDi.incognitoProvider.notifier);

    final mask = incognito.map(
      active: (value) => SvgAssets.maskMain,
      inactive: (value) => SvgAssets.maskAction,
    );

    final chatManager = ref.watch(PureAnalogDi.chatsProvider.notifier);
    final messages = ref.watch(PureAnalogDi.chatsProvider);
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).padding.top + 30),
              child: Image.asset(PureImages.logo),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                const SizedBox(height: 200),
                Expanded(
                  child: PureBottomSheet(
                    contentPadding: const EdgeInsets.only(top: 16),
                    title: Text(
                      S.of(context).chat.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    action: Row(
                      children: [
                        Text(
                          incognito.map(
                            active: (_) => S.of(context).on.toUpperCase(),
                            inactive: (masks) => masks.left > 0
                                ? incognito.left.toString()
                                : S.of(context).off.toUpperCase(),
                          ),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 12),
                        SizedBox(
                          height: 20,
                          width: 40,
                          child: ElevatedButton(
                            onPressed: () async {
                              incognito.when(
                                active: (_) => incognitoNotifier.deactivate(),
                                inactive: (_) async {
                                  final activated =
                                      incognitoNotifier.tryActivate();

                                  if (!activated) {
                                    await showModalBottomSheet(
                                      context: context,
                                      builder: (context) =>
                                          IncognitoPaymentModal(
                                        onClose: () =>
                                            context.router.maybePop(),
                                      ),
                                    );
                                  }
                                },
                              );
                            },
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all(
                                EdgeInsets.zero,
                              ),
                              backgroundColor: WidgetStateProperty.all(
                                topgTheme.mode == TopGMode.dark
                                    ? const Color(0xFF4F4F4F)
                                    : TopGColors.softLightRose,
                              ),
                            ),
                            child: SvgPicture.asset(mask),
                          ),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        LikesTile(
                          count: 44,
                          isNew: true,
                          onTap: () => AutoTabsRouter.of(context).navigate(
                            const LikesRoute(),
                          ),
                        ),
                        messages.map(
                          error: (error) => GestureDetector(
                            onTap: chatManager.loadChats,
                            child: SizedBox(
                              height: 200,
                              child: Center(
                                child: Text(
                                    '${error.message} Нажмите, чтобы обновить'),
                              ),
                            ),
                          ),
                          loading: (_) =>
                              const Center(child: CircularProgressIndicator()),
                          resolved: (chatModel) {
                            final dialogNotifier =
                                ref.watch(PureAnalogDi.dialogProvider.notifier);
                            final chats = <Widget>[];
                            for (final chat in chatModel.chats) {
                              chats.add(
                                ChatTile(
                                  hasStory: chat.hasStory,
                                  avatar: Image.asset(
                                    MockImages.avatars[chat.avatarId],
                                    fit: BoxFit.cover,
                                  ),
                                  lastMessage: chat.lastMessage,
                                  onTap: () {
                                    dialogNotifier.loadUser(chat.userId);
                                    context.router
                                        .push(const PureDialogRoute());
                                  },
                                ),
                              );
                            }
                            return Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemCount: chats.length,
                                itemBuilder: (_, index) => chats[index],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
