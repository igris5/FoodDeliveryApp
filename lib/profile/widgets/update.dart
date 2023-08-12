import 'package:flutter/material.dart';
import 'package:foodapp2/profile/profilescreen.dart';
import 'package:foodapp2/utilites/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromRGBO(207, 240, 106, 1),
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.fork_left)),
        title: Text('Update Your Profile', style: TextStyle(color: Colors.black,fontSize: 20)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // -- IMAGE with ICON
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(image: NetworkImage('https://lh3.googleusercontent.com/a/AAcHTtdruNLMjU8i75sDFNcp9BgLrPE9wMnhCJF6LsCkig5bNRs=s192-c-rg-br100'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100), color: Color.fromRGBO(14, 116, 108, 1)),
                      child: const Icon(Icons.camera, color: Color.fromARGB(255, 7, 74, 38), size: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // -- Form Fields
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text('Name'), prefixIcon: Icon(Icons.person)),
                    ),
                    const SizedBox(height:10),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text('Email'), prefixIcon: Icon(Icons.email)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text('Phone no'), prefixIcon: Icon(Icons.phone)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text('password'),
                        prefixIcon: const Icon(Icons.fingerprint),
                        suffixIcon:
                        IconButton(icon: const Icon(Icons.remove_red_eye), onPressed: () {}),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // -- Form Submit Button
                    GestureDetector(
                   
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => const ProfileScreen()),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:AppColors.mainColor,
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          child: const Text('Save the details', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // -- Created Date and Delete Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text.rich(
                          TextSpan(
                            text: '26 July ',
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                  text: '2023',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent.withOpacity(0.1),
                              elevation: 0,
                              foregroundColor: Colors.red,
                              shape: const StadiumBorder(),
                              side: BorderSide.none),
                          child: const Text('Delete'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}