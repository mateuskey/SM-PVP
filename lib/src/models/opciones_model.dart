import 'package:flutter/material.dart';

class OpcMonitoreo {

  final String image, title, description;
  final int price, size, id;
  final Color color;

  OpcMonitoreo({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<OpcMonitoreo> opciones = [
  OpcMonitoreo(
      id: 1,
      title: 'Líquidos' ,
      price: 234,
      size: 15,
      description: dummyText,
      image: 'assets/images/monitoreo_comp/líquidos.jpg',
      color: Color(0xFF535353)),
  OpcMonitoreo(
      id: 2,
      title: 'Neumático',
      price: 234,
      size: 8,
      description: dummyText,
      image: 'assets/images/monitoreo_comp/neumáticos.jpg',
      color: Color(0xFF535353)),
  OpcMonitoreo(
      id: 3,
      title: 'Amortiguadores',
      price: 234,
      size: 10,
      description: dummyText,
      image: 'assets/images/monitoreo_comp/amortiguadores.jpg',
      color: Color(0xFF535353)),
  OpcMonitoreo(
      id: 4,
      title: 'Freno',
      price: 234,
      size: 11,
      description: dummyText,
      image: 'assets/images/monitoreo_comp/frenos.jpg',
      color: Color(0xFF535353)),
  OpcMonitoreo(
      id: 5,
      title: 'Filtros',
      price: 234,
      size: 12,
      description: dummyText,
      image: 'assets/images/monitoreo_comp/filtros.jpg',
      color: Color(0xFF535353)),
  OpcMonitoreo(
    id: 6,
    title: 'Correa de Distr',
    price: 234,
    size: 12,
    description: dummyText,
    image: 'assets/images/monitoreo_comp/correa.jpg',
    color: Color(0xFF535353),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

// class OpcSistema {

//   OpcSistema(

// List<OpcSistema> opciones = [
//   OpcSistema(
//     1,
//     name: 'Monitoreo Vehículo',
//     fit: BoxFit.cover,
//     iconImage: 'images/monitoreo.jpg',
//     description:
//         "Zipping around the sun in only 88 days, Mercury is the closest planet to the sun, and it's also the smallest, only a little bit larger than Earth's moon. Because its so close to the sun (about two-fifths the distance between Earth and the sun), Mercury experiences dramatic changes in its day and night temperatures: Day temperatures can reach a scorching 840  F (450 C), which is hot enough to melt lead. Meanwhile on the night side, temperatures drop to minus 290 F (minus 180 C).",
//     boton: RaisedButton(
//       onPressed: (){
        
//       }),
//   ),
//   OpcSistema(
//     2,
//     name: 'Información',
//     iconImage: 'images/información.jpg',
//     fit: BoxFit.cover,
//     description:
//         "The second planet from the sun, Venus is Earth's twin in size. Radar images beneath its atmosphere reveal that its surface has various mountains and volcanoes. But beyond that, the two planets couldn't be more different. Because of its thick, toxic atmosphere that's made of sulfuric acid clouds, Venus is an extreme example of the greenhouse effect. It's scorching-hot, even hotter than Mercury. The average temperature on Venus' surface is 900 F (465 C). At 92 bar, the pressure at the surface would crush and kill you. And oddly, Venus spins slowly from east to west, the opposite direction of most of the other planets.",
//     // images: [
//     //   'https://cdn.pixabay.com/photo/2011/12/13/14/39/venus-11022_1280.jpg',
//     //   'https://image.shutterstock.com/image-photo/solar-system-venus-second-planet-600w-515581927.jpg'
//     // ]
//   ),
//   OpcSistema(
//     3,
//     name: 'Autoayuda',
//     iconImage: 'images/autoayuda.jpg',
//     fit: BoxFit.cover,
//     description:
//         "The third planet from the sun, Earth is a waterworld, with two-thirds of the planet covered by ocean. It's the only world known to harbor life. Earth's atmosphere is rich in nitrogen and oxygen. Earth's surface rotates about its axis at 1,532 feet per second (467 meters per second) — slightly more than 1,000 mph (1,600 kph) — at the equator. The planet zips around the sun at more than 18 miles per second (29 km per second).",
//     // images: [
//     //   'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg',
//     //   'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg',
//     //   'https://cdn.pixabay.com/photo/2016/01/19/17/29/earth-1149733_1280.jpg',
//     //   'https://image.shutterstock.com/image-photo/3d-render-planet-earth-viewed-600w-1069251782.jpg'
//     // ]
//   ),
// ];
