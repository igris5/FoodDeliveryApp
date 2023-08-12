import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodapp2/pages/home/main_food_page.dart';
import 'package:foodapp2/utilites/colors.dart';
import 'package:form_field_validator/form_field_validator.dart';
  
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  
  @override
  State<Login> createState() => _LoginState();
}
  
class _LoginState extends State<Login> {
  Map userData = {};
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
           SizedBox(height: 200,),
           Center(child: Text('Login',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800),)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    key: _formkey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: TextFormField(
                                  validator: MultiValidator([
                                    RequiredValidator(
                                        errorText: 'Enter email address'),
                                    EmailValidator(
                                        errorText:
                                            'Please correct email filled'),
                                  ]),
                                  decoration: InputDecoration(
                                      hintText: 'Email',
                                      labelText: 'Email',
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Colors.green,
                                      ),
                                      errorStyle: TextStyle(fontSize: 18.0),
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.red),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(9.0)))))),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextFormField(
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: 'Please enter Password'),
                                MinLengthValidator(8,
                                    errorText:
                                        'Password must be atlist 8 digit'),
                                PatternValidator(r'(?=.*?[#!@$%^&*-])',
                                    errorText:
                                        'Password must be atlist one special character')
                              ]),
                              decoration: InputDecoration(
                                hintText: 'Password',
                                labelText: 'Password',
                                prefixIcon: Icon(
                                  Icons.key,
                                  color: Colors.green,
                                ),
                                errorStyle: TextStyle(fontSize: 18.0),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9.0))),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(180, 0, 0, 0),
                            child: Text('Forget Password!'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Container(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                primary: AppColors.mainColor,
                                 ),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                onPressed: () {
                                  if (_formkey.currentState!.validate()) {
                                    print('form submiitted');
                                  }
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  const MainFoodPage(),));
                                },
                             
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                              child: Center(
                                child: Text(
                                  'Or Sign In Using!',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Row(
                                  children: [
                                    Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.network('https://i.pinimg.com/564x/9e/2f/a5/9e2fa5c22c0a9303c62d19dc38ae5af4.jpg'
                                          ,
                                          fit: BoxFit.cover,
                                        )),
                                    Container(
                                      height: 70,
                                      width: 70,
                                      child: Image.network(
                                        'https://i.pinimg.com/564x/39/21/6d/39216d73519bca962bd4a01f3e8f4a4b.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.network(
                                        'https://i.pinimg.com/564x/fd/fa/dd/fdfadd56cb3ea0ae5ad45cb3fabc0e18.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.only(top: 50),
                              child: Text(
                                'SIGN UP!',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                          )
                        ]),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}