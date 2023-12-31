import 'package:nasa_workshop/src/nasa_app/constants/enums.dart';

import '../models/apod_model.dart';

// Mock data pour tester l'affichage sans appeler les API
List<Apod> listScreenMock = [
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
  Apod(
    date: DateTime(2023, 6, 28),
    explanation:
        "Unlike most entries in Charles Messier's famous catalog of deep sky objects, M24 is not a bright galaxy, star cluster, or nebula. It's a gap in nearby, obscuring interstellar dust clouds that allows a view of the distant stars in the Sagittarius spiral arm of our Milky Way galaxy. Direct your gaze through this gap with binoculars or small telescope and you are looking through a window over 300 light-years wide at stars some 10,000 light-years or more from Earth. Sometimes called the Small Sagittarius Star Cloud, M24's luminous stars fill this gorgeous starscape. Covering over 3 degrees or the width of 6 full moons in the constellation Sagittarius, the telescopic field of view includes dark markings B92 and B93 near center, along with other clouds of dust and glowing nebulae toward the center of the Milky Way.",
    mediaType: MediaType.image,
    title: "Messier 24: Sagittarius Star Cloud",
    url: "https://apod.nasa.gov/apod/image/2306/M24_2023grapod1024.jpg",
  ),
];
