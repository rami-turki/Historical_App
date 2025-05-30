import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';
import 'package:history_app/features/home/data/models/historical_charachters_model.dart';

class HistoricalCharachtersSection extends StatelessWidget {
  const HistoricalCharachtersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        scrollDirection: Axis.horizontal,
        itemCount: historicalCharachterModel.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 133,
                width: 74,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 96,
                      width: 74,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)),
                          child: Image.asset(
                              historicalCharachterModel[index].image)),
                    ),
                    const SizedBox(height: 11),
                    SizedBox(
                      height: 20,
                      child: Text(
                        textAlign: TextAlign.center,
                        historicalCharachterModel[index].name,
                        style: AppFontStyle.poppins500x18
                            .copyWith(fontSize: 14, color: AppColors.deepBrown),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
