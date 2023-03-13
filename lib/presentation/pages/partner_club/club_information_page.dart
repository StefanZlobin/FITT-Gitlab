import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/domain/cubits/club/club_cubit.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/pages/partner_club/widgets/expanded_schedule_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class ClubInformationPage extends StatelessWidget {
  const ClubInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L.of(context).clubInformationPageTitle),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(AppIcons.arr_big_left),
        ),
      ),
      body: BlocBuilder<ClubCubit, ClubState>(
        bloc: getIt<ClubCubit>(),
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error) => const SizedBox(),
            loaded: (club, _, __, ___, ____, _____, ______) {
              return ListView(
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 64),
                children: [
                  const Text(
                    'Описание',
                    style: AppTypography.kH20,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    club.description.toString(),
                    style: AppTypography.kParagraph14,
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    'График работы',
                    style: AppTypography.kH20,
                  ),
                  const SizedBox(height: 16),
                  ExpandedScheduleWidget(schedules: club.workSchedule!),
                  // Отступ 20, так как верхний виджет имеет отступ снизу 8
                  const SizedBox(height: 20),
                  const Text(
                    'Контакты',
                    style: AppTypography.kH20,
                  ),
                  const SizedBox(height: 16),
                  ...[
                    Text(
                      club.organization?.officalLabel ?? '',
                      style: AppTypography.kBody14,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'ИНН ${club.organization?.inn}',
                      style: AppTypography.kBody14,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      club.organization?.corporateEmail ?? '',
                      style: AppTypography.kBody14,
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(
                          Uri.parse(
                            'tel:${club.organization?.contacts.first.phoneNumbers.first.phoneNumber}',
                          ),
                        );
                      },
                      child: Text(
                        club.organization?.contacts.first.phoneNumbers.first
                                .maskedPhoneNumber ??
                            '',
                        style: AppTypography.kBody14
                            .apply(color: AppColors.kOxford),
                      ),
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      'Документы',
                      style: AppTypography.kH20,
                    ),
                    const SizedBox(height: 16),
                    if (club.documents != null)
                      for (var document in club.documents!) ...[
                        _buildClubDoc(
                          context,
                          document.documentLabel,
                          document.fileUrl,
                        ),
                        const SizedBox(height: 24),
                      ],
                  ],
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildClubDoc(
    BuildContext context,
    String documentLabel,
    String fileUrl,
  ) {
    return CenterLeft(
      child: TextButton(
        onPressed: () async {
          final url = Uri.parse(fileUrl);
          await launchUrl(
            url,
            mode: LaunchMode.externalApplication,
          );
        },
        style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
        child: Text(
          documentLabel,
          style: AppTypography.kBody14.apply(color: AppColors.kPrimaryBlue),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
