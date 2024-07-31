# Lets Learn! 📚

Simpleclub Assignment. This has been built with a focus on making the UI responsive across different screen sizes.

---

_\*Letslearn works on iOS, Android, Web._

## Features 🚀

- Interactive lessons with multiple pages
- Responsive design for various screen sizes
- Cubit pattern for state management
- Navigation Routes set up for web/mobile

## App Architecture

### Sequence Diagram

### Class Diagram
[![](https://mermaid.ink/img/pako:eNqdVD1vAjEM_StRxhaGrlGXql2QqFoJxixW4h4RXHJNfGoR5X57c-EoNASEyJAP-z3beo684cpp5IKrFYTwYqDyUEvL4koWNsUQnGWbna1f9zPyxlbM6FMbGVrhqVljUN40ZJw9ck5NoG6H6BhBFXLfO1TYsSbuJ645hGVPCsvBtZX2uOyeemvRKcGzqxtn0VLH1P5aTvWHLOWjdVPQQzlLkXCxlCzLHL_pcqaz1EkdxbjIVXDUmzxx1PhaJT9bDKUmv6XwHXPpDOf-gHLeo6InG77QT3RZ7l2sq3sbZcvCDD9a8gfJ2d14HG812HV8pE8jUnfA7Ms8D0_K5PAUowA-6J8zDp7Hn8j432jB4hOtLmOzzmbgVF-hlEFBwRYQ-IjX6GswOs6ApKnktMAaJRfxqsEvJZd2G3HQkputreKCfIsj7l1bLfaPttFAOMwPLj5gFaIVtSHnX4cJ0x_bXyGhY28?type=png)](https://mermaid.live/edit#pako:eNqdVD1vAjEM_StRxhaGrlGXql2QqFoJxixW4h4RXHJNfGoR5X57c-EoNASEyJAP-z3beo684cpp5IKrFYTwYqDyUEvL4koWNsUQnGWbna1f9zPyxlbM6FMbGVrhqVljUN40ZJw9ck5NoG6H6BhBFXLfO1TYsSbuJ645hGVPCsvBtZX2uOyeemvRKcGzqxtn0VLH1P5aTvWHLOWjdVPQQzlLkXCxlCzLHL_pcqaz1EkdxbjIVXDUmzxx1PhaJT9bDKUmv6XwHXPpDOf-gHLeo6InG77QT3RZ7l2sq3sbZcvCDD9a8gfJ2d14HG812HV8pE8jUnfA7Ms8D0_K5PAUowA-6J8zDp7Hn8j432jB4hOtLmOzzmbgVF-hlEFBwRYQ-IjX6GswOs6ApKnktMAaJRfxqsEvJZd2G3HQkputreKCfIsj7l1bLfaPttFAOMwPLj5gFaIVtSHnX4cJ0x_bXyGhY28)


## Improvements/Enhancements

- Implement Remote/Local Data Storage to repository
- Scale text with layout size
- Adapt appbar to different sizes
- Externalize themes/styles/paddings to their separate files
- Allow abstract types of tasks(similar to content types) 

## Key Dependencies

- `flutter_bloc`: For state management
- `auto_route`: For navigation
- `responsive_framework`: For responsive UI design (in hindsight I would have picked another library, not a lot of
  documentation and some learning curve)
- `responsive_builder`: Helper for responsive design
- `get_it`: For dependency injection