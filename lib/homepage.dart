import 'package:BLoC/bloc/mybloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<MyblocBloc>(
        child: BlocConsumer<MyblocBloc, MyblocState>(
          listener: (context, state) {
            if (state is FormLoaded) {
              return CircularProgressIndicator();
            }
          },
          builder: (context, state) {
            if (state is MyblocInitial) {
              return initialWidget(context);
            }
            return CircularProgressIndicator();
          },
        ),
        create: (BuildContext context) {
          return MyblocBloc();
        },
      ),
    );
  }

  Widget initialWidget(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextFormField(
            style: TextStyle(color: Colors.blue),
            decoration: InputDecoration(
              labelText: 'First Name',
              labelStyle: TextStyle(color: Colors.grey),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              suffixIcon: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 20,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              BlocProvider.of<MyblocBloc>(context).add(SubmitForm());
            },
            child: Text("Submit"),
          )
        ],
      ),
    );
  }
}
