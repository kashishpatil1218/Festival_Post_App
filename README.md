# Festival Post Maker App

Festival Post Maker is an application built to enable users to design personalized festival greeting posts. The app allows users to select from various templates, customize them with text and images, and share the posts across social media.

## Features

- **Customizable Festival Templates**
- **Add Text with Various Fonts & Styles**
- **Use Stickers and Custom Images**
- **Save and Share Festival Posts**
- **Intuitive UI with Modals for Easy Interaction**

---

## Table of Contents

- [Tech Stack](#tech-stack)
- [Key Components](#key-components)
  - [Stack](#stack)
  - [RepaintBoundary](#repaintboundary)
  - [Image Saving](#image-saving)
  - [Image Sharing](#image-sharing)
  - [Modal Class](#modal-class)
- [How to Use](#how-to-use)
- [Installation](#installation)
- [Contribution Guidelines](#contribution-guidelines)
- [License](#license)

---

## Tech Stack

The app is developed using the following technologies:

- **Framework:** Flutter/Dart
- **UI Components:** Flutter Widgets
- **State Management:** Provider or Riverpod (optional)
- **Image Handling:** `RepaintBoundary`, `Image` widget
- **Sharing Functionality:** `share_plus` Flutter package
- **Storage:** Local file storage (Image Gallery Saver)

---

## Key Components

### 1. **Stack**

`Stack` is a crucial widget in the Festival Post Maker app. It allows you to layer multiple widgets on top of each other, making it ideal for designing complex UI elements such as text overlays on images.

```dart
Stack(
  children: [
    Image.asset('assets/templates/festival_template.png'),
    Positioned(
      top: 50,
      left: 20,
      child: Text(
        'Happy Diwali',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    ),
    // More Positioned widgets for stickers, images, etc.
  ],
)
```

- **Use Case:** We use `Stack` to overlay text, stickers, and decorations over the selected festival template.

### 2. **RepaintBoundary**

`RepaintBoundary` is used to capture widgets as images. In the Festival Post Maker app, it plays a key role in capturing the post design before saving or sharing it.

```dart
GlobalKey _globalKey = GlobalKey();

RepaintBoundary(
  key: _globalKey,
  child: Stack(
    // Custom UI elements (text, stickers, images) inside the Stack
  ),
);
```

- **Use Case:** When the user finalizes their post, the app wraps the UI inside a `RepaintBoundary` to render it into an image for saving or sharing.

### 3. **Image Saving**
```dart
import 'dart:ui' as ui;
import 'package:image_gallery_saver/image_gallery_saver.dart';

Future<void> _saveImage() async {
  RenderRepaintBoundary boundary = _globalKey.currentContext.findRenderObject();
  ui.Image image = await boundary.toImage();
  ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  final result = await ImageGallerySaver.saveImage(byteData.buffer.asUint8List());
  // Confirm save with result feedback
}
```

- **Use Case:** Once the user is done creating their festival post, they can tap the "Save" button to store the image to their phone’s gallery.

### 4. **Image Sharing**
```dart
import 'package:share_plus/share_plus.dart';

Future<void> _shareImage(String filePath) async {
  Share.shareFiles([filePath], text: 'Check out my Festival Post!');
}
```

- **Use Case:** After creating their post, users can directly share it with their friends via social media or messaging apps.

### 5. **Modal Class**

The **Modal** component is used for various actions in the app, such as selecting templates, confirming saves, or showing help information.

```dart
showModalBottomSheet(
  context: context,
  builder: (BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          Text('Select a Festival Template'),
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Diwali'),
            onTap: () => _selectTemplate('diwali'),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Christmas'),
            onTap: () => _selectTemplate('christmas'),
          ),
        ],
      ),
    );
  },
);
```
## How to Use

1. **Choose a Template:**
   - Select a festival template from the available options.
   
2. **Personalize Your Post:**
   - Add text, stickers, or custom images using the available customization options.

3. **Preview and Save:**
   - Finalize your design, and use the **Save** option to store the post in your gallery.

4. **Share Your Post:**
   - After saving, you can directly share the image to social media platforms or send it to friends.


## Images:
<div>
  <img src="https://github.com/user-attachments/assets/e5c608f0-09f0-447c-acf4-f31e7e84d5b9"height=500px>
  <img src="https://github.com/user-attachments/assets/603f84db-6d19-4cf9-8bda-1a3153796a5f"height=500px>
  <img src="https://github.com/user-attachments/assets/a200b5f1-d248-4276-a132-ffed8ebcb80a"height=500px>
  <img src="https://github.com/user-attachments/assets/13fe0afc-cfeb-4049-91d8-e71e636e6ef2"height=500px>
  <img src="https://github.com/user-attachments/assets/da231a9b-6bd7-4d49-b7cc-a68af782a684"height=500px>
  <img src="https://github.com/user-attachments/assets/d491c10a-916b-4986-ab7d-b565dbb1dc62"height=500px>
  <img src="https://github.com/user-attachments/assets/44fe852d-36a8-42c7-85f8-7b1cf49f83be"height=500px>
  <img src="https://github.com/user-attachments/assets/f419b88a-053d-45c5-8d01-94f422eb534a"height=500px>
  <img src="https://github.com/user-attachments/assets/403820cc-2594-419e-ab74-8d5348c0f774"height=500px>
</div>
