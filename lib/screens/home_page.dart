import 'package:connectivity_checker/bloc/internet_cubit.dart';
import 'package:connectivity_checker/screens/widgets/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<InternetCubit, InternetState>(
          listener: (context, state) {
            if (state == InternetState.gained) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Connected'),
                  backgroundColor: Colors.green,
                ),
              );
            } else if (state == InternetState.lost) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Not Connected'),
                  backgroundColor: Colors.redAccent,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state == InternetState.gained) {
              // Show your information when connected
              return const MyProfile();
            } else if (state == InternetState.lost) {
              return Image.asset('assets/noInternet.jpg');
            } else {
              return const CircularProgressIndicator(); // Loading indicator
            }
          },
        ),
      ),
    );
  }
}
