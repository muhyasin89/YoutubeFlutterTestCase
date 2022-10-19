# youtube_test_case

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



Flutter Structure FrameWork


|-- lib
    |-- main.dart
    |-- app
        |-- data
            |-- model
            |-- providers
                |-- database  -(Firebase)
                |-- network
                      |-- apis
                    |-- dio.dart
                    |-- dio_exception.dart
                    |-- dio_representable.dart
            |-- repository
        |-- modules --(presentasi/presentation)
            |-- auth
                |-- binding
                    |-- binding.dart
                |-- controller
                    |-- local_auth_controller
                    |-- login_controller
                    |-- digital_signature_controller
                    |-- face_recognition_controller
                |-- view
                    |-- local_view
                    |-- login_view
                    |-- digital_signature_view
                    |-- face_recognition_view
            |-- home
            |-- admin
            |-- berita
            |-- cuti
            |-- info_pegawai
            |-- mytask
            |-- nadine
            |-- notifikasi
            |-- penghargaan_pegawai
            |-- presensi
            |-- rapat
        |-- routes
            |-- app_pages.dart
            |-- app_routes.dart
    |-- domain
        |-- entities
        |-- repositories
        |-- usecases
    |-- core
        |-- config
        |-- extension
        |-- service
        |-- types
        |-- usecases
        |-- utils
|-------