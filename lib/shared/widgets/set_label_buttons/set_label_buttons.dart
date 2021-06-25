import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnpressed;

  final String secondaryLabel;
  final VoidCallback secondaryOnpressed;

  final bool enablePrimaryColor;
  final bool enableSecondaryColor;

  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnpressed,
    required this.secondaryLabel,
    required this.secondaryOnpressed,
    this.enablePrimaryColor = false,
    this.enableSecondaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 57,
      child: Column(
        children: [
          Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
          Container(
            height: 56,
            child: Row(
              children: [
                Expanded(
                  child: LabelButton(
                    label: primaryLabel,
                    onPressed: primaryOnpressed,
                    style: enablePrimaryColor
                        ? TextStyles.buttonBoldPrimary
                        : null,
                  ),
                ),
                DividerVerticalWidget(),
                Expanded(
                  child: LabelButton(
                    label: secondaryLabel,
                    onPressed: secondaryOnpressed,
                    style: enableSecondaryColor
                        ? TextStyles.buttonBoldPrimary
                        : null,
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
