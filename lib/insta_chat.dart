import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instagram"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                hintText: "search",
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          Column(
            children: [
              SizedBox(
                height: 750,
                child: ListView.builder(
                  
                    scrollDirection: Axis.vertical,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://etimg.etb2bimg.com/photo/95229872.cms")),
                        title: Text(
                          "Azar Hosseini",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        subtitle: Text(
                          "Evelyn Allen",
                          style: TextStyle(fontSize: 16),
                        ),
                       
                        

                       
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
