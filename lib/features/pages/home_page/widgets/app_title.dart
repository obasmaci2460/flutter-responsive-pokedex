import 'package:flutter/material.dart';
import 'package:poke_app/core/constants.dart';
import 'package:poke_app/core/ui_utils.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIUtils.getStackHeight,
      child: Stack(
        children: [
          Padding(
            padding: UIUtils.getPadding,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                AppConstants.appTitle,
                style: AppConstants.appTitleStyle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              AppConstants.pokemonBackgroundImageUrl,
              fit: BoxFit.fitWidth,
              width: UIUtils.getImageWidth,
            ),
          ),
        ],
      ),
    );
  }
}
