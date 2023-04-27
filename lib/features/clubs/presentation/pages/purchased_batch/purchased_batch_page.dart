import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/features/clubs/domain/cubits/purchased_batch/purchased_batch_cubit.dart';
import 'package:fitt/features/clubs/presentation/pages/purchased_batch/widget/purchased_batch_card.dart';
import 'package:fitt/presentation/components/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PurchasedBatchPage extends StatelessWidget {
  const PurchasedBatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Купленные часы'),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(AppIcons.arr_big_left),
        ),
      ),
      body: BlocBuilder<PurchasedBatchCubit, PurchasedBatchState>(
        bloc: getIt<PurchasedBatchCubit>(),
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loaded: (batches) {
              if (batches.isEmpty) {
                return EmptyWidget(
                  hintText:
                      'Нет актуальных пакетов. Выберите клуб и приобретите пакет часов',
                  buttonText: 'Подобрать клуб',
                  onPressed: () => context.pop(),
                );
              }
              return ListView.separated(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                itemCount: batches.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final batch = batches[index];
                  return PurchasedBatchCard(userBatch: batch);
                },
              );
            },
            error: (error) => const SizedBox(),
          );
        },
      ),
    );
  }
}
