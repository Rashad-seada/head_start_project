import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/config/enums.dart';
import '../../screens/02_auth_screen.dart';
import '../../widgets/custom_page_transition.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  PageController controller = PageController();

  int index = 0;

  void onTapSkip(context){
    Navigator.push(context, CustomPageTransition(AuthScreen(option: AuthOptions.signUp,)));
  }

  void onTapButton(BuildContext context){
    if(index == 2){
      Navigator.push(context, CustomPageTransition(AuthScreen(option: AuthOptions.signUp,)));
    }else{
      controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.fastLinearToSlowEaseIn);
    }
  }

}
