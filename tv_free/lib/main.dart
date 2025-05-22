import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'TV Free Moshe',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFFF6B00), 
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFFF6B00), 
          secondary: Color(0xFF6A00FF),
          surface: Color(0xFF1E1E1E), 
          background: Color(0xFF121212),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white70,
          onBackground: Colors.white,
          error: Colors.redAccent,
          onError: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        cardTheme: CardTheme(
          color: const Color(0xFF2C2C2C),
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(60),
            padding: const EdgeInsets.symmetric(vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: const Color(0xFFFF6B00),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Color(0xFFFF6B00),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF6A00FF),
          foregroundColor: Colors.white,
        ),
      ),
      home: const StreamMenuPage(),
    ),
  );
}

// -----------------------
// Página principal (menú) 
// -----------------------
class StreamMenuPage extends StatelessWidget {
  const StreamMenuPage({super.key});

  final List<Map<String, String>> streams = const [
    
    {
      'title': 'Win Sports+',
      'url': 'https://51a1.crackstreamslivehd.com/espn/tracks-v1a1/mono.m3u8?ip=190.60.194.112&token=434219380e4aa156f6492c307da23d227c79067e-0c-1747901975-1747869575'
    },
    {
      'title': 'TNT Argentina',
      'url': 'https://cfd-v4-service-channel-stitcher-use1-1.prd.pluto.tv/v2/stitch/hls/channel/63eb9255c111bc0008fe6ec4/3321280/playlist.m3u8?terminate=false&sid=c7e6697a-36af-11f0-8eb6-7ac443f7aa0e&deviceDNT=0&deviceLat=4.739999771118164&deviceLon=-74.04000091552734&deviceModel=web&deviceVersion=136.0.0&includeExtendedEvents=true&appName=web&DRMCapabilities=widevine&deviceId=93e44752-262a-4cb9-b112-617ed7ad2766&appVersion=9.12.0-e2425380b67be936b703637b779ede1dc68f15fd&deviceType=web&deviceMake=chrome&jwt=eyJhbGciOiJIUzI1NiIsImtpZCI6ImFlMTUyOWQ0LTQ5ZDktNDVkNy1iNTNhLWM0MDk1ZWNhMzU4YiIsInR5cCI6IkpXVCJ9.eyJzZXNzaW9uSUQiOiJjN2U2Njk3YS0zNmFmLTExZjAtOGViNi03YWM0NDNmN2FhMGUiLCJjbGllbnRJUCI6IjE5MC42MC4xOTQuMTEyIiwiY2l0eSI6IkJvZ290YSIsInBvc3RhbENvZGUiOiIxMTAxMzEiLCJjb3VudHJ5IjoiQ08iLCJkbWEiOjAsImFjdGl2ZVJlZ2lvbiI6IlZFIiwiZGV2aWNlTGF0Ijo0LjczOTk5OTc3MTExODE2NCwiZGV2aWNlTG9uIjotNzQuMDQwMDAwOTE1NTI3MzQsInByZWZlcnJlZExhbmd1YWdlIjoiZXMiLCJkZXZpY2VUeXBlIjoid2ViIiwiZGV2aWNlVmVyc2lvbiI6IjEzNi4wLjAiLCJkZXZpY2VNYWtlIjoiY2hyb21lIiwiZGV2aWNlTW9kZWwiOiJ3ZWIiLCJhcHBOYW1lIjoid2ViIiwiYXBwVmVyc2lvbiI6IjkuMTIuMC1lMjQyNTM4MGI2N2JlOTM2YjcwMzYzN2I3NzllZGUxZGM2OGYxNWZkIiwiY2xpZW50SUQiOiI5M2U0NDc1Mi0yNjJhLTRjYjktYjExMi02MTdlZDdhZDI3NjYiLCJjbUF1ZGllbmNlSUQiOiIiLCJpc0NsaWVudEROVCI6ZmFsc2UsInVzZXJJRCI6IiIsImxvZ0xldmVsIjoiREVGQVVMVCIsInRpbWVab25lIjoiQW1lcmljYS9Cb2dvdGEiLCJzZXJ2ZXJTaWRlQWRzIjpmYWxzZSwiZTJlQmVhY29ucyI6ZmFsc2UsImZlYXR1cmVzIjp7Im11bHRpUG9kQWRzIjp7ImVuYWJsZWQiOnRydWV9fSwiZm1zUGFyYW1zIjp7ImZ3VmNJRDIiOiI5M2U0NDc1Mi0yNjJhLTRjYjktYjExMi02MTdlZDdhZDI3NjYiLCJmd1ZjSUQyQ29wcGEiOiI5M2U0NDc1Mi0yNjJhLTRjYjktYjExMi02MTdlZDdhZDI3NjYiLCJjdXN0b21QYXJhbXMiOnsiZm1zX2xpdmVyYW1wX2lkbCI6IiIsImZtc19lbWFpbGhhc2giOiIiLCJmbXNfc3Vic2NyaWJlcmlkIjoiIiwiZm1zX2lmYSI6IiIsImZtc19pZGZ2IjoiIiwiZm1zX3VzZXJpZCI6IjkzZTQ0NzUyLTI2MmEtNGNiOS1iMTEyLTYxN2VkN2FkMjc2NiIsImZtc192Y2lkMnR5cGUiOiJ1c2VyaWQiLCJmbXNfcmFtcF9pZCI6IiIsImZtc19oaF9yYW1wX2lkIjoiIiwiZm1zX2JpZGlkdHlwZSI6IiIsIl9md18zUF9VSUQiOiIiLCJmbXNfcnVsZWlkIjoiMTAwMTUsMTAwMTYsMTAwMjAsMTAwMDAsMTAwMDMsMTAwMTMsMTAwMDksMTAwMTQsMTAwMjEifX0sImRybSI6eyJuYW1lIjoid2lkZXZpbmUiLCJsZXZlbCI6IkwzIn0sImlzcyI6ImJvb3QucGx1dG8udHYiLCJzdWIiOiJwcmk6djE6cGx1dG86ZGV2aWNlczpWRTpPVE5sTkRRM05USXRNall5WVMwMFkySTVMV0l4TVRJdE5qRTNaV1EzWVdReU56WTIiLCJhdWQiOiIqLnBsdXRvLnR2IiwiZXhwIjoxNzQ3OTY1MzA0LCJpYXQiOjE3NDc4Nzg5MDQsImp0aSI6IjM3ZDVjOGM1LTQyZmUtNDc2OS1iYzM1LWExNTRlZTFlYzk5OSJ9.qs6LltwCxBa_blwG1aKq7FWEclL0w2jYu3_X9pGeBZg&paln=AQzzBGQEh5cnwsX5s3XtYdjcaGy9ajbRFFTgbNY8fFH0py26irK_9_RUnye2BhZuPD7M1U9UivRLA9xcKGPgqNPo5fJ-HUMeYWVvkUAmkMJ9opcr16oNMMVq6h32zWGw1XL6hOZCLpA8lb7VmD5tFFThYaqV7r-bVCC9FSwr4AzKZJhkT2h8PMQH1hc2OsjrqqsmFhEBKhMQNSAgq_qobHZ6n3-XvMLaBLryQo9_mb2DzHI0D6kHskgiXJ-juKYHGEwZZ6LJpfCUCNdS32nRgghh6BrwGhqmDMYOszi8MwJQjdFO3gPr7XOUd_QMFOmH9Q8ecLlToCGURcY5uRMqwKkZYyOJ7ncM785B9eS4SqMSzhDqjJEqVCe3W8tjCwp1pkM2LqvbD32qwEBgWHc79tcn41lG0pVDvSdHn1Mebi6IEb8Ypy8HeWvw1KrFCIITmJt-jm5h9rmt3gaZpm-LUQVxLAaqVJUo4UTKBz28rmTp055IN4cpgyEmLCcpC6OFrlXvHkyw7-SdHijNWW4sf1KOFY2WHwxFmaAPyOdWjfdSQAxLOmkFDNeBEu2BTEOVK4wdqOEBJ3VRh4suMLRmOU7RxOyxYiypeiQBOToV5KcVPrpS9ixGCpXJt6G5l2gPt8DBjGm_wjiUHk7g7642Fbl3HN9R52srFcFhxyEYTqVWFqK8fVBqCGGU3-oafXbxRcrnRm8EtvL4Ahe6YML3eFOvvHyCy9FoQ8KLf0p8wV3q1w2rMw8_0QmnvkwfIvrU8-Y9hmxxq4erRSOQNNW5TUfaH5VQ-sUxtAAfmAAt5K9s9f5DOP9wdWiGjWG6sNWpmcF-7II9adf3XYoJWBiumdOZ4gnzNlWD6cr1m6rBvTA2F28UZpS7kcAO3HzhpGNbg-ddOQwTHlh5H3L8c07QpoVXmWO77LhHDp-DtnRXN4y6t1BwBoTDOgNQ8hGgV135y2WVJX2kWCPThe2eUX_On0tz5HIAvPDEbQRb7kb2DRlBOxPeke4chyx4xe1t1ubyh1zMZvO6aewsn_k8tC9VznF0ThUiAsT33VLFaGs8d6uypHK7T42BulUUbFdjR2crA7uP2fz2VLI5LUgcpe-PZP10uAywNjzIGof7L3JCfkHD9mFc0o1SA8gBYXG0D9iXD6edNPPDGdQHU57KcC4f_gxLaiUayoLS0dGWIS6hROKNPQipjOcBxvz3ZYzAw1jZpRdozRZqBFR9Xe2dohjUPxpY22XqRVy3cH40GRdSndSB1_KXJX6QM5tYlHWwFjc2KrJHhbF2Y2QW2WCNNf31WM-_ey3quwVEUuICOeHQPaz09XvevzqXfp3-ynxdwyfYPzKkVou40vvRNTwlHFBbHLP2PMbxoPUKlsXc_GRYgAqnIhPr15VD17fPS5t7xIlwLx04CEqTtOm_wrykTUkrvlLwLAixgIiGnzVgA1Z3rMqomswtkh732J8hdIsUQctZ1DpJ0JHGh9NEkfkY4zXJndYuN4MPBBFv5Ra9oQFwpD4DaqUQBqXCnIuCQSPy_lkVKmIfWwslReS6xAJxMEHOR6YY8F698Ku3Vq-9bYU8&CMCD=mtp%3D81800%2Cot%3Dm%2Csf%3Dh%2Csid%3D%222216780b-9145-4e9b-b297-9b4045341096%22'
    },
    {
      'title': 'Platzi tv',
      'url': 'https://us-b4-p-e-zs14.cdn.mdstrm.com/live-stream/663ba07c06e6e3577a30452a/publish/media_1800.m3u8?aid=512e13acaca1ebcd2f000279&uid=Sw67cT21F0VG15x5ChM5KgC4oSdu2LFs&sid=hWegFvRx95Xny9T6c4VNoqUWqP4d0aH5&pid=7QrRF79SQyTnIKT9bMFHwGUforINl0n2&ref=https%3A%2F%2Fplatzi.com%2Flive%2F&without_cookies=false&listenerid=&dnt=true&es=us-b4-p-e-zs14.cdn.mdstrm.com&ote=1747963577469&ot=BNOVzEskAwyjjtNjWdLfOw&proto=https&pz=us'
    },
    {
      'title': 'viajes',
      'url': 'https://cfd-v4-service-channel-stitcher-use1-1.prd.pluto.tv/v2/stitch/hls/channel/5dcddfbdb7cf0e0009ae09ea/3321280/playlist.m3u8?terminate=false&sid=c7e6697a-36af-11f0-8eb6-7ac443f7aa0e&deviceDNT=0&deviceLat=4.739999771118164&deviceLon=-74.04000091552734&deviceModel=web&deviceVersion=136.0.0&includeExtendedEvents=true&appName=web&DRMCapabilities=widevine&deviceId=93e44752-262a-4cb9-b112-617ed7ad2766&appVersion=9.12.0-e2425380b67be936b703637b779ede1dc68f15fd&deviceType=web&deviceMake=chrome&jwt=eyJhbGciOiJIUzI1NiIsImtpZCI6ImFlMTUyOWQ0LTQ5ZDktNDVkNy1iNTNhLWM0MDk1ZWNhMzU4YiIsInR5cCI6IkpXVCJ9.eyJzZXNzaW9uSUQiOiJjN2U2Njk3YS0zNmFmLTExZjAtOGViNi03YWM0NDNmN2FhMGUiLCJjbGllbnRJUCI6IjE5MC42MC4xOTQuMTEyIiwiY2l0eSI6IkJvZ290YSIsInBvc3RhbENvZGUiOiIxMTAxMzEiLCJjb3VudHJ5IjoiQ08iLCJkbWEiOjAsImFjdGl2ZVJlZ2lvbiI6IlZFIiwiZGV2aWNlTGF0Ijo0LjczOTk5OTc3MTExODE2NCwiZGV2aWNlTG9uIjotNzQuMDQwMDAwOTE1NTI3MzQsInByZWZlcnJlZExhbmd1YWdlIjoiZXMiLCJkZXZpY2VUeXBlIjoid2ViIiwiZGV2aWNlVmVyc2lvbiI6IjEzNi4wLjAiLCJkZXZpY2VNYWtlIjoiY2hyb21lIiwiZGV2aWNlTW9kZWwiOiJ3ZWIiLCJhcHBOYW1lIjoid2ViIiwiYXBwVmVyc2lvbiI6IjkuMTIuMC1lMjQyNTM4MGI2N2JlOTM2YjcwMzYzN2I3NzllZGUxZGM2OGYxNWZkIiwiY2xpZW50SUQiOiI5M2U0NDc1Mi0yNjJhLTRjYjktYjExMi02MTdlZDdhZDI3NjYiLCJjbUF1ZGllbmNlSUQiOiIiLCJpc0NsaWVudEROVCI6ZmFsc2UsInVzZXJJRCI6IiIsImxvZ0xldmVsIjoiREVGQVVMVCIsInRpbWVab25lIjoiQW1lcmljYS9Cb2dvdGEiLCJzZXJ2ZXJTaWRlQWRzIjpmYWxzZSwiZTJlQmVhY29ucyI6ZmFsc2UsImZlYXR1cmVzIjp7Im11bHRpUG9kQWRzIjp7ImVuYWJsZWQiOnRydWV9fSwiZm1zUGFyYW1zIjp7ImZ3VmNJRDIiOiI5M2U0NDc1Mi0yNjJhLTRjYjktYjExMi02MTdlZDdhZDI3NjYiLCJmd1ZjSUQyQ29wcGEiOiI5M2U0NDc1Mi0yNjJhLTRjYjktYjExMi02MTdlZDdhZDI3NjYiLCJjdXN0b21QYXJhbXMiOnsiZm1zX2xpdmVyYW1wX2lkbCI6IiIsImZtc19lbWFpbGhhc2giOiIiLCJmbXNfc3Vic2NyaWJlcmlkIjoiIiwiZm1zX2lmYSI6IiIsImZtc19pZGZ2IjoiIiwiZm1zX3VzZXJpZCI6IjkzZTQ0NzUyLTI2MmEtNGNiOS1iMTEyLTYxN2VkN2FkMjc2NiIsImZtc192Y2lkMnR5cGUiOiJ1c2VyaWQiLCJmbXNfcmFtcF9pZCI6IiIsImZtc19oaF9yYW1wX2lkIjoiIiwiZm1zX2JpZGlkdHlwZSI6IiIsIl9md18zUF9VSUQiOiIiLCJmbXNfcnVsZWlkIjoiMTAwMTUsMTAwMTYsMTAwMjAsMTAwMDAsMTAwMDMsMTAwMTMsMTAwMDksMTAwMTQsMTAwMjEifX0sImRybSI6eyJuYW1lIjoid2lkZXZpbmUiLCJsZXZlbCI6IkwzIn0sImlzcyI6ImJvb3QucGx1dG8udHYiLCJzdWIiOiJwcmk6djE6cGx1dG86ZGV2aWNlczpWRTpPVE5sTkRRM05USXRNall5WVMwMFkySTVMV0l4TVRJdE5qRTNaV1EzWVdReU56WTIiLCJhdWQiOiIqLnBsdXRvLnR2IiwiZXhwIjoxNzQ3OTY1MzA0LCJpYXQiOjE3NDc4Nzg5MDQsImp0aSI6IjM3ZDVjOGM1LTQyZmUtNDc2OS1iYzM1LWExNTRlZTFlYzk5OSJ9.qs6LltwCxBa_blwG1aKq7FWEclL0w2jYu3_X9pGeBZg&paln=AQzzBGQEoMazUQmGnqzTiJ8YemwHeuW7Szvc1EiMT3X_cNsCkN4D4Izr482zRfCOoYECoKHiIHMs0TFKODXkBUDDae6TQndWOj5MK83kThu30FnqDZBEGHUq0ab_36IP09jJKC7bdOcm3MU1qDekJ2zLyKM6fDRmrc6oWlL4oaBZLT-PcEUII2cIMx-JhjTK9NQHpY7j27sFVx6nz_d7U16UchXkAlpftXWLsveoqpwc4dPbDWHl55A0zOg-0NHaIGBA3CUFBizCNssEraClHixcOLxIdJ9R42WJ4AJLMr30suCaubAipegO1y8BcqFhg8gg5W-1yNsZM1EWHe9UVqhFFUPiKQppiOIloLaRsfMZcszUTDHJdnBqyFjcuGZ2r6W_N-1PIITbhiZCdAsClO_oKCvTbPwqm3fwQsEgNgfudPaNYNGfKXgV6Wl_0VndwwemYMA4G4AixWNv4ZuHpat5e0S9ty165eTlTXC2hXH0qeI_8Qm_FBmaBhM3LMZ3ucjDNgjBLICNOnfpqgA1_wgu6aMeQxQrL1alufVhSuNNAjKYfItd6_ayJCgB_8SJlZvnDpRwHoTBhDxdQEah4SK1jolGa0CvpvjDm0b2CTLmN56sr44-Yod-f2GTua4JkPZZ1hD0J_fs9DItw3f7M_0P0G8O2Q3DRl7noeOV3pnoKmq5mJlWFZfITcRjX4IdENY4B01cJq2nZuuONrWRnNZbzogx9N986tYUiXHdmfRFahbiiXiJDjGJvtLLD3PxYgjItKLiQNMcO5CDq-8AqYEGOgVlTEMyXaZFa9KhSUqU4EARhp07ee7J-kfjCZXT35X6y7elj8aZ0xVYmAhKCf7kDhnVAFm_cHqSWF1bz8fj0JcTDR2bq5ocS2bSi2sjaCvQEX8Vl0S9LmI_UvzK7cJBVzLqPCG5-JQ6bYpC-CpRBSsUHSy1pzl-5BxCLwSWy44Rs5CX72yaFnNNRaD-dsmvhk9vLHvtTnoyS8NbN4AK0NKSos7YVGwBPK09xt7A93Z6mllKi8PTPJbbtTJxAhQMLlaZb1es7AHPcACMpLLwEqmaGmvMa25U_uZoBnDUUZWDV4oXechzHiiqsVSaCuclUNOMGwZPWrENNcapH5V5hVR8nDSXcgoczddawHPSz0ivB7zZMW7i_cQvquhfz69QKzW1bXKyFMm22gnNWOcWr2GJUBh3_HUdHxdjdvbpx7eM3pLaWl3pdZAwLxlWGWQrFvgo_h8z8imK2oYV5WQkg82ih8edQTA4Nw0U6l7HeU89OsD5yhrVGk9BdXCaxcfqCEHZe1fZrVeu0Jdwc8IeDiJ25o5F0L7EmYuh1sBp3KDRU37YYASnhmeCL5LglxnTRBP7hpJDrIT3h0GbvHq6ZfgUeQsk1m1EeGGGbJHgyLmopiVNCVk48TeMkyIF89LR935n4F7Ej4q7af0KWi_ozAzUx2Oneuq97P7OowQsBXjuIvoYYrGGRl-q3dTZXuJDye-22H05Byb3sahNV0kQKlOZPgz1JuNU6A8FGTAap_n5k9Dlpz_V-N7W_cj2LMbqOYeR9IQkDeg4AjoBbw..&CMCD=mtp%3D99500%2Cot%3Dm%2Csf%3Dh%2Csid%3D%2204464fee-4c85-46f0-9427-a40e91e5facc%22'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Streaming de Deportes')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: streams.length,
        itemBuilder: (context, index) {
          final stream = streams[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => VideoPage(
                        title: stream['title']!,
                        videoUrl: stream['url']!,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Icon(Icons.play_circle_fill, color: Theme.of(context).primaryColor, size: 30),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          stream['title']!,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.grey[600]),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// -----------------------
// Página del reproductor (MEJORADA)
// -----------------------
class VideoPage extends StatefulWidget {
  final String title;
  final String videoUrl;
 

  const VideoPage({
    super.key,
    required this.title,
    required this.videoUrl,
    // this.description,
  });

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController _controller;
  bool _isLoading = true;
  String? _errorMessage;

  final Map<String, String> customHeaders = {
    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:138.0) Gecko/20100101 Firefox/138.0',
    'Accept': '/',
    'Accept-Language': 'en-US,en;q=0.5',
    'Accept-Encoding': 'gzip, deflate, br, zstd',
    'Referer': 'https://capo5play.com/',
    'Origin': 'https://capo5play.com',
    'Connection': 'keep-alive',
  };

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  Future<void> _initializeVideoPlayer() async {
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
      httpHeaders: customHeaders,
    );

    try {
      await _controller.initialize();
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        _controller.play();
      }
    } catch (e) {
      debugPrint('Error al inicializar el video: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
          _errorMessage = 'No se pudo cargar el stream. Puede que el enlace haya expirado o no esté disponible.';
        });
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Obtener el ancho de la pantalla para decidir el layout
    final screenWidth = MediaQuery.of(context).size.width;
    // Punto de quiebre para cambiar el layout a horizontal
    const double breakpoint = 800.0;

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: screenWidth > breakpoint
          ? _buildWideLayout() 
          : _buildNarrowLayout(), 
      floatingActionButton: _controller.value.isInitialized && !_isLoading && _errorMessage == null
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                });
              },
              child: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
            )
          : null,
    );
  }

  // --- Widgets auxiliares para los layouts ---

  Widget _buildVideoPlayer() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(color: Theme.of(context).primaryColor),
      );
    } else if (_errorMessage != null) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, color: Theme.of(context).colorScheme.error, size: 50),
            const SizedBox(height: 16),
            Text(
              _errorMessage!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isLoading = true;
                  _errorMessage = null;
                });
                _initializeVideoPlayer();
              },
              child: const Text('Reintentar'),
            ),
          ],
        ),
      );
    } else if (_controller.value.isInitialized) {
      return AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      );
    } else {
      return const Center(child: Text('Esperando video...', style: TextStyle(color: Colors.white70)));
    }
  }

  Widget _buildVideoInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          
          const SizedBox(height: 16),
         
          Row(
            children: [
              Icon(Icons.person_outline, color: Colors.grey[500], size: 20),
              const SizedBox(width: 4),
              Text('En vivo', style: TextStyle(color: Colors.grey[500])),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: () {
                  // Lógica para compartir
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('¡Compartir stream!')),
                  );
                },
                icon: const Icon(Icons.share, size: 18),
                label: const Text('Compartir'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.surface, // Fondo sutil
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  textStyle: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
          const Divider(height: 32, color: Colors.white12), // Separador
          Text(
            'Comentarios del chat',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          // Aquí iría la lista de mensajes de chat
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text(
                  'El chat de la transmisión en vivo estará aquí. (Requiere implementación de backend)',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white54),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatPlaceholder() {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface, // Fondo del chat
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16), // Margen para separar del video
      child: Column(
        children: [
          Text(
            'Chat en Vivo',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(color: Colors.white12),
          Expanded(
            child: Center(
              child: Text(
                'Aquí se mostrarán los mensajes del chat.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white54),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Campo para enviar mensajes
          TextField(
            decoration: InputDecoration(
              hintText: 'Escribe un mensaje...',
              hintStyle: TextStyle(color: Colors.grey[600]),
              filled: true,
              fillColor: Colors.grey[800],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              suffixIcon: Icon(Icons.send, color: Theme.of(context).primaryColor),
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildWideLayout() {
    // Layout para pantallas anchas: Row con Video y Chat
    return Row(
      children: [
        // Columna para el video y su información
        Expanded(
          flex: 3, // El video y su info ocupan más espacio
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9, // Aspect ratio estándar para video
                child: _buildVideoPlayer(),
              ),
              Expanded( // Permite que la información del video sea desplazable
                child: SingleChildScrollView(
                  child: _buildVideoInfoContent(),
                ),
              ),
            ],
          ),
        ),
        // Chat lateral
        Expanded(
          flex: 1, // El chat ocupa menos espacio
          child: _buildChatPlaceholder(),
        ),
      ],
    );
  }

  Widget _buildNarrowLayout() {
    // Layout para pantallas estrechas: Columna con Video, Info y Chat
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9, // Aspect ratio estándar para video
          child: _buildVideoPlayer(),
        ),
        Expanded(
          child: SingleChildScrollView( // Permite desplazamiento vertical
            child: Column(
              children: [
                _buildVideoInfoContent(), // Contenido de la información del video
                _buildChatPlaceholder(), // Chat debajo del video
              ],
            ),
          ),
        ),
      ],
    );
  }

  // Contenido de la información del video para ser reutilizado en ambos layouts
  Widget _buildVideoInfoContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          // Puedes añadir una descripción aquí
          // Text(
          //   widget.description ?? 'Descripción del stream en vivo.',
          //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          //     color: Colors.grey[400],
          //   ),
          // ),
          const SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.person_outline, color: Colors.grey[500], size: 20),
              const SizedBox(width: 4),
              Text('En vivo', style: TextStyle(color: Colors.grey[500])),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('¡Compartir stream!')),
                  );
                },
                icon: const Icon(Icons.share, size: 18),
                label: const Text('Compartir'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  textStyle: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
