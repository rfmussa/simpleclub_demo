# Lets Learn! 📚

Simpleclub Assignment. This has been built with a focus on making the UI responsive across different screen sizes.

---

_\*Letslearn works on iOS, Android, Web._

## Features 🚀

- Interactive lessons with multiple pages
- Responsive design for various screen sizes
- Cubit pattern for state management
- Navigation Routes set up for web/mobile

## Web Demo 

![Demo](./demo_web.gif)

## App Architecture


### Class Diagram
[![](https://mermaid.ink/img/pako:eNqdVMFuwjAM_ZUoxw0Ou1ao0rRdkJg2CXbLxUq8EtEmXeJqQ4x_XxrawdqAEDk0if2ebT272XFpFfKMyxK8f9ZQOKiEYWFFC1ug99aw3cHWrvslOW0KptXYRppKHJsVeul0TdqaE-dCe5odEDkjKPzQ9wYF5qwO35FrBX7Tkvymc-2FOS27pd5adEzwZKvaGjSUM9kf06n-kKl8tK0TekhrKBAuljLIssJvupwpLT0FXjLgvAoSXYwoYdixXsSW-u7KdKGhJ9cq_9mgTw3Fa0ycMxt3f25mpHUOJT0a_4VurtLtOcS6ehbGcnV_gOAPgrO76TScKjDbcIlDlsVugu7LPA-PygzhMUYCfOzMkHH0zH4C4_9gZCxc0ag0dtDzATjWlyilUzBja_B8wit0FWgV3oyoqeC0xgoFz8JRgdsILsw-4KAhu9wayTNyDU64s02x7i9NrYCwe2949gGlD1ZUmqx76V6kdtv_An8GbnY?type=png)](https://mermaid.live/edit#pako:eNqdVMFuwjAM_ZUoxw0Ou1ao0rRdkJg2CXbLxUq8EtEmXeJqQ4x_XxrawdqAEDk0if2ebT272XFpFfKMyxK8f9ZQOKiEYWFFC1ug99aw3cHWrvslOW0KptXYRppKHJsVeul0TdqaE-dCe5odEDkjKPzQ9wYF5qwO35FrBX7Tkvymc-2FOS27pd5adEzwZKvaGjSUM9kf06n-kKl8tK0TekhrKBAuljLIssJvupwpLT0FXjLgvAoSXYwoYdixXsSW-u7KdKGhJ9cq_9mgTw3Fa0ycMxt3f25mpHUOJT0a_4VurtLtOcS6ehbGcnV_gOAPgrO76TScKjDbcIlDlsVugu7LPA-PygzhMUYCfOzMkHH0zH4C4_9gZCxc0ag0dtDzATjWlyilUzBja_B8wit0FWgV3oyoqeC0xgoFz8JRgdsILsw-4KAhu9wayTNyDU64s02x7i9NrYCwe2949gGlD1ZUmqx76V6kdtv_An8GbnY)

## Improvements/Enhancements

- Implement Remote/Local Data Storage to repository
- Scale text with layout size
- Adapt appbar to different sizes
- Externalize themes/styles/paddings to their separate files
- Allow abstract types of tasks(similar to content types) 
- Add mermaid.js diagrams to git repo

## Key Dependencies

- `flutter_bloc`: For state management
- `auto_route`: For navigation
- `responsive_framework`: For responsive UI design (in hindsight I would have picked another library, not a lot of
  documentation and some learning curve)
- `responsive_builder`: Helper for responsive design
- `get_it`: For dependency injection