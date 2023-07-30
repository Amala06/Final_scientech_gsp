import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:my_app/matrix_helper.dart';
import 'package:my_app/display_earth.dart';
import 'package:my_app/small_list.dart';
import 'dart:math' as math;
import 'package:my_app/controller.dart';
import 'package:my_app/server.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';

// Function to terminate and restart the application

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   //  ServerController serverController = Get.put(ServerController());
//   // String updatedValue = '';

//   // @override
//   // void initState() {
//   //   super.initState();
  //   serverController.startServer();
//   //   serverController.fetchData();
//   // }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
            key: _scaffoldKey, // Assign the GlobalKey to the Scaffold
      // Wrap the existing content with a Drawer
      drawer: Drawer(
        
        child: Container(
          color: Colors.grey[900],
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/io.png'), // Your image asset path
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  'Scientech',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Gidugu',
                    fontSize: 36,
                  ),
                ),
              ),
        
              ExpansionTile(
                title: Text('Product Info',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 2.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Discover our cutting-edge IoT devices, revolutionizing daily life. Enjoy seamless automation, data insights, and remote control, creating a connected ecosystem that enhances convenience and efficiency.",style: TextStyle(                    color: Colors.white,
),
                            textAlign: TextAlign.justify,
                          ),
                          // Add more information as needed
                        ],
                      ),
                    ),
                  ),
                ],
              ),
        
              ExpansionTile(
                title: Text('About Us',style: TextStyle(                    color: Colors.white,
),
               ),
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 2.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "For over 35 years, Scientech has been a trusted leader in the electronics sector, providing reliable and quality solutions. We offer an extensive line of innovative solutions for industry, education, and environmental sectors. With our expertise and commitment, we continue to thrive and excel.",style: TextStyle(                    color: Colors.white,
),
               
                            textAlign: TextAlign.justify,
                          ),
                          // Add more information as needed
                        ],
                      ),
                    ),
                  ),
                ],
              ),
        
              ExpansionTile(
                title: Text('Contact ',
                  style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold
                  ),
                ),
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 2.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Scientech Technologies Pvt. Ltd. 94, Electronic Complex, Pardesipura,Indore - 452 010, India",style: TextStyle(                    color: Colors.white,
),
               
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            height: 1, // The height of the divider (thickness)
                            thickness: 0.2, // The thickness of the divider
                            color: Colors.white, // The color of the divider
                          ),
                          SizedBox(
                            height: 10,
                          ),
        
                          Text("info@scientech.bz",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
        
                          Divider(
                            height: 1, // The height of the divider (thickness)
                            thickness: 0.2, // The thickness of the divider
                            color: Colors.white, // The color of the divider
                          ),
                          SizedBox(
                            height: 10,
                          ),
        
                          Text("For India",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
        
                          Text("+91-97555 91500",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text("+91-98932 70301",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
        
                          Divider(
                            height: 1, // The height of the divider (thickness)
                            thickness: 0.2,
                            // The thickness of the divider
                            color: Colors.white, // The color of the divider
                          ),
                          SizedBox(
                            height: 10,
                          ),
        
                          Text("For International",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
        
                          Text("+91-73899 10103",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          // Text(" +91-98932 70301"),
        
                          SizedBox(
                            height: 10,
                          ),
        
                          // Add more information as needed
                        ],
                      ),
                    ),
                  ),
                ],
              ),
        
              ListTile(
                title: Text('Version 1.0.0',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Add your navigation logic here
                  // This will close the drawer after navigating to the selected item
                  Navigator.pop(context);
                },
              ),
        
              // Add more ListTiles for other items in the drawer
            ],
          ),
        ),
      ),
      body: GetBuilder<ServerController>(
        builder: (controller) {
          if (controller.matrix.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            String array_name = "";

            if (ServerController.serverr.matrix[0][2] == '1') {
              array_name = "matrix";
            } else if (ServerController.serverr.street[0][2] == '2') {
              array_name = "soil";
            } else {
              array_name = "smart";
            }

            List<String?> rowDataVal;

            switch (array_name) {
              case "matrix":
                rowDataVal = ServerController.serverr.matrix.length > 3
                    ? ServerController.serverr.matrix[0]
                    : [];
                break;
              case "soil":
                rowDataVal = ServerController.serverr.street.length > 3
                    ? ServerController.serverr.street[0]
                    : [];
                break;
              default:
                rowDataVal = ServerController.serverr.smart.length > 3
                    ? ServerController.serverr.smart[0]
                    : [];
                break;
            }

            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 0, 0, 1),
                    Color.fromRGBO(4, 27, 151, 1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  transform: GradientRotation(math.pi / 4),
                ),
              ),
              child: Stack(
                children: [
                  
                  Positioned(
                    top: -20,
                    child: Transform.translate(
                      offset: const Offset(-70, -10),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(202, 15, 206, 1),
                              Colors.transparent,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            transform: GradientRotation(math.pi / 4),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(),
                        ),
                      ),
                    ),
                  ),
                  
                  // const Padding(
                  //   padding: EdgeInsets.all(20),
                  //   child: Row(
                  //     children: [
                  //       Icon(
                  //         Icons.menu,
                  //         color: Colors.white,
                  //       ),
                  //       Spacer(),
                  //       Icon(
                  //         Icons.notifications,
                  //         color: Colors.white,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.07,
                        // left: currentWidth * 0.22,
                      ),
                      // child: Text(
                      //   'SMART BUILDING',
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontFamily: 'Gidugu',
                      //     fontSize: screenHeight * 0.04,
                      //   ),
                      // ),
                      
                      child: Text(
                        rowDataVal.length > 1
                            ? rowDataVal[1] ?? '30°C'
                            : '30°C',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gidugu',
                          fontSize: screenHeight * 0.04,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.15,
                        left: currentWidth * 0.4,
                      ),
                    ),
                  ),
                      AppBar(
                    // Remove the existing Row with Icons and Spacer
                    title: Text(''),
                      backgroundColor: Colors
                        .transparent, // Set the app bar background color to transparent

                    leading: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        _scaffoldKey.currentState!
                            .openDrawer(); // Open the drawer
                      },
                    ),
                    actions: [
                      IconButton(
                        icon: Image.asset(
                          'assets/logo.png', // Replace this with the image asset path
                          width: 204, // Set the width of the image
                          height: 204, // Set the height of the image
                        ),
                        onPressed: () {
                          // Add your notifications logic here
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: screenHeight * 0.17, ),
                      child: Text(
                        controller.s,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),

                  // Center(
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: ServerController.serverr.server!.running
                  //           ? Colors.green[400]
                  //           : Colors.red[400],
                  //     ),
                  //     padding: EdgeInsets.all(5),
                  //     child:
                  //         Text(ServerController.serverr.server!.running ? "ON" : "OFF"),
                  //   ),
                  // ),
                  // Center(
                  //   child: TextButton(
                  //       onPressed: () async {
                  //         debugPrint("hellp");
                  //         await  ServerController.serverr.startServer();
                  //       },
                  //       child: Text(
                  //           ServerController.serverr.server!.running
                  //           ? "Stop Server"
                  //           : "Start Server")),
                  // ),
                  Center(
                    child: DisplayEarth(),
                  ),
                  // DisplayEarth(),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.75),
                    child: SmallList(),
                  ),
// SmallList(),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image(
                      image: AssetImage('assets/build.png'),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
