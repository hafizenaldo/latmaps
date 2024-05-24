import 'package:flutter/material.dart';
import 'package:latmaps/Screen%20Page/PNP_Maps.dart';
import 'package:latmaps/model/detail_model.dart';


class DetailPage extends StatelessWidget {
  final Datum? data;
  const DetailPage({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Politeknik Negeri Padang"),
        ),
        body:
        ListView(
            children: [
              Container(
                width: 306,
                height: 290,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('gambar/pnp.jpeg'), fit: BoxFit.cover
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 320,
                height: 111,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Warna bayangan
                        spreadRadius: 2, // Radius penyebaran bayangan
                        blurRadius: 5, // Radius blur bayangan
                        offset: Offset(0, 3), // Posisi bayangan (x, y)
                      )
                    ]
                ),
                child: Padding(padding: EdgeInsets.all(18),
                  child: ListTile(
                    title: Text("Address"),
                    subtitle: Text(
                        "Jl. Kampus, Limau Manis, Kec. Pauh, Kota Padang, Sumatera Barat 25164" ?? ""
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 320,
                height: 111,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Warna bayangan
                        spreadRadius: 2, // Radius penyebaran bayangan
                        blurRadius: 5, // Radius blur bayangan
                        offset: Offset(0, 3), // Posisi bayangan (x, y)
                      )
                    ]
                ),
                child: Padding(padding: EdgeInsets.all(18),
                  child: ListTile(
                    title: Text("Profile"),
                    subtitle: Text(
                         "Politeknik Negeri Padang adalah sebuah perguruan tinggi negeri yang terdapat di Kota Padang, Sumatera Barat, Indonesia. "
                             "Politeknik ini memiliki kampus yang bersebelahan dengan Universitas Andalas"??""
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Lokasi"),
              GestureDetector(onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => pnp()));
              },
                child: Container(
                  width: 320,
                  height: 269,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:AssetImage('gambar/sample.png'), fit:BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Warna bayangan
                          spreadRadius: 2, // Radius penyebaran bayangan
                          blurRadius: 5, // Radius blur bayangan
                          offset: Offset(0, 3), // Posisi bayangan (x, y)
                        )
                      ]
                  ),
                ),
              )
            ],

            )
        );
    }
}
