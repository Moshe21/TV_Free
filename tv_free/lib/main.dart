import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class StreamMenuPage extends StatefulWidget {
  const StreamMenuPage({super.key});

  @override
  State<StreamMenuPage> createState() => _StreamMenuPageState();
}

class _StreamMenuPageState extends State<StreamMenuPage> {
  final List<Map<String, String>> streams = [
    {
      'title': 'ESPN Premium',
      'url': 'https://socio.crackstreamslivehd.com/espn2/index.m3u8?token=c943a72c3c608b593785aeceabce9c3da6419b04-48-1747291985-1747259585&ip=190.60.194.112'
    },
    {
      'title': 'Anime (Pluto TV)',
      'url': 'https://cfd-v4-service-channel-stitcher-use1-1.prd.pluto.tv/v2/stitch/hls/channel/5dcde17bf6591d0009839e02/3321280/playlist.m3u8?terminate=false&'
    },
    {
      'title': 'TNT',
      'url': 'https://live2.sdfgnksbounce.com:9091/41_/index.m3u8?token=93efec2d519c20a9572dc9c4e4cbd966a668b54c-9f29233ecf3ddc2f8c0f5fe1eeb0a314-1747287120-1747269120&amp;remote=190.60.194.112',
    },
    {
      'title': 'Music (Pluto TV)',
      'url': 'https://cfd-v4-service-channel-stitcher-use1-1.prd.pluto.tv/v2/stitch/hls/channel/5dcde17bf6591d0009839e02/3321280/playlist.m3u8?terminate=false&sid=500b05a0-3127-11f0-8405-4aeff4b45d8b&deviceDNT=0&deviceLat=4.739999771118164&deviceLon=-74.04000091552734&deviceModel=web&deviceVersion=136.0.0&includeExtendedEvents=true&appName=web&DRMCapabilities=widevine&deviceId=f3551a03-92fa-4ea4-816e-13fa841ab360&appVersion=9.12.0-e2425380b67be936b703637b779ede1dc68f15fd&deviceType=web&deviceMake=chrome&jwt=eyJhbGciOiJIUzI1NiIsImtpZCI6ImQyMTdlYjM5LWE3MTMtNDliMi04OGE3LWQ3ZmQxNGY3YTQ2YyIsInR5cCI6IkpXVCJ9.eyJzZXNzaW9uSUQiOiI1MDBiMDVhMC0zMTI3LTExZjAtODQwNS00YWVmZjRiNDVkOGIiLCJjbGllbnRJUCI6IjE5MC42MC4xOTQuMTEyIiwiY2l0eSI6IkJvZ290YSIsInBvc3RhbENvZGUiOiIxMTAxMzEiLCJjb3VudHJ5IjoiQ08iLCJkbWEiOjAsImFjdGl2ZVJlZ2lvbiI6IlZFIiwiZGV2aWNlTGF0Ijo0LjczOTk5OTc3MTExODE2NCwiZGV2aWNlTG9uIjotNzQuMDQwMDAwOTE1NTI3MzQsInByZWZlcnJlZExhbmd1YWdlIjoiZXMiLCJkZXZpY2VUeXBlIjoid2ViIiwiZGV2aWNlVmVyc2lvbiI6IjEzNi4wLjAiLCJkZXZpY2VNYWtlIjoiY2hyb21lIiwiZGV2aWNlTW9kZWwiOiJ3ZWIiLCJhcHBOYW1lIjoid2ViIiwiYXBwVmVyc2lvbiI6IjkuMTIuMC1lMjQyNTM4MGI2N2JlOTM2YjcwMzYzN2I3NzllZGUxZGM2OGYxNWZkIiwiY2xpZW50SUQiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJjbUF1ZGllbmNlSUQiOiIiLCJpc0NsaWVudEROVCI6ZmFsc2UsInVzZXJJRCI6IiIsImxvZ0xldmVsIjoiREVGQVVMVCIsInRpbWVab25lIjoiQW1lcmljYS9Cb2dvdGEiLCJzZXJ2ZXJSaWRlQWRzIjpmYWxzZSwiZTJlQmVhY29ucyI6ZmFsc2UsImZlYXR1cmVzIjp7Im11bHRpUG9kQWRzIjp7ImVuYWJsZWQiOnRydWV9fSwiZm1zUGFyYW1zIjp7ImZ3VmNJRDIiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJmd1ZjSUQyQ29wcGEiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJjdXN0b21QYXJhbXMiOnsiZm1zX2xpdmVyYW1wX2lkbCI6IiIsImZtc19lbWFpbGhhc2giOiIiLCJmbXNfc3Vic2NyaWJlcmlkIjoiIiwiZm1zX2lmYSI6IiIsImZtc19pZGZ2IjoiIiwiZm1zX3VzZXJpZCI6ImYzNTUxYTAzLTkyZmEtNGVhNC04MTZlLTEzZmE4NDFhYjM2MCIsImZtc192Y2lkMnR5cGUiOiJ1c2VyaWQiLCJmbXNfcmFtcF9pZCI6IiIsImZtc19oaF9yYW1wX2lkIjoiIiwiZm1zX2JpZGlkdHlwZSI6IiIsIl9md18zUF9VSUQiOiIiLCJmbXNfcnVsZWlkIjoiMTAwMDksMTAwMDMsMTAwMTUsMTAwMjAsMTAwMDAsMTAwMTQsMTAwMTYsMTAwMjEsMTAwMTMifX0sImRybSI6eyJuYW1lIjoid2lkZXZpbmUiLCJsZXZlbCI6IkwzIn0sImlzcyI6ImJvb3QucGx1dG8udHYiLCJzdWIiOiJwcmk6djE6cGx1dG86ZGV2aWNlczpWRTpaak0xTlRGaE1ETXRPVEptWVMwMFpXRTBMVGd4Tm1VdE1UTm1ZVGcwTVdGaU16WXciLCJhdWQiOiIqLnBsdXRvLnR2IiwiZXhwIjoxNzQ3MzU2OTM2LCJpYXQiOjE3NDcyNzA1MzYsImp0aSI6IjYwOWZmNzg0LWM2ZWYtNGJlNS04MjU4LWQ1Njc1ZGUwYmE2NiJ9.ZLKwzDVg1UPF3sj0P1355jxxMvp1QhCIorxVxzwKw7M&paln=AQzzBGQEbpkOM-XPvhh2clox5ayTCv1W5G1LQOgXImzC9RqJw1wENWMJkf4M4nzU-Ma-OCOEZTdkkX5ECHemjVZ_Y6JWBSsrXi3eTIMh8iNTG75DClt9P8CnD2VTr90by-KC2_6bihLBIaw-69cBTgu1kHYx7wSlcLc2Imj6-NUBamHYEqcPnIYYzp25R0F9x7T9veKe-JVtWdOAXXvpn__2SK-CKsBWRNdlnZrORiyfVluuLh8V35c9BZfqSq5rOFiLVe3G8_EcG8rmPPpXPOB-k7b7alyYwgyvUo9c8YZgdh9KzKV6Adbqz3cU8qbd7UgKTuq4x6g8zsuD77bfvlcJteUMKr1J05HajN_TwkaCXOjtIN0265tVPyQjCzvAcorrWGoIp59v4evJtlL6uCdO__ZFWNy7Z-3Bo9v56qd7WYbV5xQ7jWiEyyexJ7fMsufms-QxNzPEu8aVeO4m7lehvBYbQ2oCFOmu6-m41PY27hcgRf636EeaA7BhVkl_go6INIKEXRzm2aPYSbiB3tGQCCVLxEKs1LLV50iezrOu2pyPlGNCJO9WWDY4yNAvX_0ltTl_4yyl8DD6Ji6HyqWiP_nQhl2zwfZZS-OMbXMxkGEAGdjdW41fipUagi9XBJlIBiUuRdOOUXm8tX_p0m8L7-Z3AtyrW1j0rWgY5izHv2S_PZaWgNI5GN177yzWxdeQlqnmVqA83Fx1TPR46QjgOdesp5cKUBpFTPiwyn6UOYzMEcmg8F1MWviEw7kONlWiILKNw_LeLHar0jOj6Rw3A9t7TSvWytkVu07VIV0IKik5rv59QuIinfFqlvSdDEpramoV7tVEtmfcR7L1Um-87JqK6Mj84SnFx4j-JuDibPKz1mgxDstcTO9cGj3UOCTGakqFsxGj1VgrS1Ip-Z5Q8Evf26D2K28LK2YltjM2zlQ5bAMu1tquGhiGbW-r6-kTVLFklbdD4KoasdwINXXlIWY3kXMEqkAnkdT5keAidQlrBID0MtMSM-jHjoyUPAr4-Le8PIigErdm6eM6bCJQdf-CK11hVRUb2OwWsY3KPV8Ai6-97BwZiDdH2rAqz5fiRagj1VHzG6LJ3vJvzsw2uD9AQ40IGoWrAbsizHqG-6ulUxzCrGJRSsgaR6d3XqO4w1RyGiDRWv0SDs1ln8JrlfZF6PDsTDNCBP0oKKSmW8tJJp6kaD-1BkL0E7og0TUKJqPqjGbF1Ccf-PU8r9E3Ita732XSgJUHWU7u3RH3QuXPiedajtyARZwvEU15oheWVt6eiHVKS6CJ2UFbWqOR_u3JN9JLVFdjuNeD3DJRCMj4V-rSw3Nxm_vWHn8fkLewnR36dwlUrhxTEAVrnIFbhE857qgKHt3iJha21oB2QkMx4Y6qWsq5KicukfENhxa3NHd3wbsi1qM.&CMCD=mtp%3D94300%2Cot%3Dm%2Csf%3Dh%2Csid%3D%2255627c32-3e65-40bc-aa63-ebdabfc6d4db%22'
    },
    {
      'title': 'Travel (Pluto TV)',
      'url': 'https://cfd-v4-service-channel-stitcher-use1-1.prd.pluto.tv/v2/stitch/hls/channel/5dcde17bf6591d0009839e02/3321280/playlist.m3u8?terminate=false&sid=500b05a0-3127-11f0-8405-4aeff4b45d8b&deviceDNT=0&deviceLat=4.739999771118164&deviceLon=-74.04000091552734&deviceModel=web&deviceVersion=136.0.0&includeExtendedEvents=true&appName=web&DRMCapabilities=widevine&deviceId=f3551a03-92fa-4ea4-816e-13fa841ab360&appVersion=9.12.0-e2425380b67be936b703637b779ede1dc68f15fd&deviceType=web&deviceMake=chrome&jwt=eyJhbGciOiJIUzI1NiIsImtpZCI6ImQyMTdlYjM5LWE3MTMtNDliMi04OGE3LWQ3ZmQxNGY3YTQ2YyIsInR5cCI6IkpXVCJ9.eyJzZXNzaW9uSUQiOiI1MDBiMDVhMC0zMTI3LTExZjAtODQwNS00YWVmZjRiNDVkOGIiLCJjbGllbnRJUCI6IjE5MC42MC4xOTQuMTEyIiwiY2l0eSI6IkJvZ290YSIsInBvc3RhbENvZGUiOiIxMTAxMzEiLCJjb3VudHJ5IjoiQ08iLCJkbWEiOjAsImFjdGl2ZVJlZ2lvbiI6IlZFIiwiZGV2aWNlTGF0Ijo0LjczOTk5OTc3MTExODE2NCwiZGV2aWNlTG9uIjotNzQuMDQwMDAwOTE1NTI3MzQsInByZWZlcnJlZExhbmd1YWdlIjoiZXMiLCJkZXZpY2VUeXBlIjoid2ViIiwiZGV2aWNlVmVyc2lvbiI6IjEzNi4wLjAiLCJkZXZpY2VNYWtlIjoiY2hyb21lIiwiZGV2aWNlTW9kZWwiOiJ3ZWIiLCJhcHBOYW1lIjoid2ViIiwiYXBwVmVyc2lvbiI6IjkuMTIuMC1lMjQyNTM4MGI2N2JlOTM2YjcwMzYzN2I3NzllZGUxZGM2OGYxNWZkIiwiY2xpZW50SUQiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJjbUF1ZGllbmNlSUQiOiIiLCJpc0NsaWVudEROVCI6ZmFsc2UsInVzZXJJRCI6IiIsImxvZ0xldmVsIjoiREVGQVVMVCIsInRpbWVab29uZS":"America/Bogota","serverSideAds":false,"e2eBeacons":false,"features":{"multiPodAds":{"enabled":true}},"fmsParams":{"fwVcID2":"f3551a03-92fa-4ea4-816e-13fa841ab360","fwVcID2Coppa":"f3551a03-92fa-4ea4-816e-13fa841ab360","customParams":{"fms_liveramp_idl":"","fms_emailhash":"","fms_subscriberid":"","fms_ifa":"","fms_idfv":"","fms_userid":"f3551a03-92fa-4ea4-816e-13fa841ab360","fms_vcid2type":"userid","fms_ramp_id":"","fms_hh_ramp_id":"","fms_bididtype":"","_fw_3P_UID":"","fms_ruleid":"10009,10003,10015,10020,10000,10014,10016,10021,10013"}},"drm":{"name":"widevine","level":"L3"},"iss":"boot.pluto.tv","sub":"pri:v1:pluto:devices:VE:ZjM1NTFhMDMtOTJmYS00ZWE0LTgxNmUtMTNmYTg0MWFiMzYw","aud":"*.pluto.tv","exp":1747356936,"iat":1747270536,"jti":"609ff784-c6ef-4be5-8258-d5675de0ba66"}.ZLKwzDVg1UPF3sj0P1355jxxMvp1QhCIorxVxzwKw7M&paln=AQzzBGQEbpkOM-XPvhh2clox5ayTCv1W5G1LQOgXImzC9RqJw1wENWMJkf4M4nzU-Ma-OCOEZTdkkX5ECHemjVZ_Y6JWBSsrXi3eTIMh8iNTG75DClt9P8CnD2VTr90by-KC2_6bihLBIaw-69cBTgu1kHYx7wSlcLc2Imj6-NUBamHYEqcPnIYYzp25R0F9x7T9veKe-JVtWdOAXXvpn__2SK-CKsBWRNdlnZrORiyfVluuLh8V35c9BZfqSq5rOFiLVe3G8_EcG8rmPPpXPOB-k7b7alyYwgyvUo9c8YZgdh9KzKV6Adbqz3cU8qbd7UgKTuq4x6g8zsuD77bfvlcJteUMKr1J05HajN_TwkaCXOjtIN0265tVPyQjCzvAcorrWGoIp59v4evJtlL6uCdO__ZFWNy7Z-3Bo9v56qd7WYbV5xQ7jWiEyyexJ7fMsufms-QxNzPEu8aVeO4m7lehvBYbQ2oCFOmu6-m41PY27hcgRf636EeaA7BhVkl_go6INIKEXRzm2aPYSbiB3tGQCCVLxEKs1LLV50iezrOu2pyPlGNCJO9WWDY4yNAvX_0ltTl_4yyl8DD6Ji6HyqWiP_nQhl2zwfZZS-OMbXMxkGEAGdjdW41fipUagi9XBJlIBiUuRdOOUXm8tX_p0m8L7-Z3AtyrW1j0rWgY5izHv2S_PZaWgNI5GN177yzWxdeQlqnmVqA83Fx1TPR46QjgOdesp5cKUBpFTPiwyn6UOYzMEcmg8F1MWviEw7kONlWiILKNw_LeLHar0jOj6Rw3A9t7TSvWytkVu07VIV0IKik5rv59QuIinfFqlvSdDEpramoV7tVEtmfcR7L1Um-87JqK6Mj84SnFx4j-JuDibPKz1mgxDstcTO9cGj3UOCTGakqFsxGj1VgrS1Ip-Z5Q8Evf26D2K28LK2YltjM2zlQ5bAMu1tquGhiGbW-r6-kTVLFklbdD4KoasdwINXXlIWY3kXMEqkAnkdT5keAidQlrBID0MtMSM-jHjoyUPAr4-Le8PIigErdm6eM6bCJQdf-CK11hVRUb2OwWsY3KPV8Ai6-97BwZiDdH2rAqz5fiRagj1VHzG6LJ3vJvzsw2uD9AQ40IGoWrAbsizHqG-6ulUxzCrGJRSsgaR6d3XqO4w1RyGiDRWv0SDs1ln8JrlfZF6PDsTDNCBP0oKKSmW8tJJp6kaD-1BkL0E7og0TUKJqPqjGbF1Ccf-PU8r9E3Ita732XSgJUHWU7u3RH3QuXPiedajtyARZwvEU15oheWVt6eiHVKS6CJ2UFbWqOR_u3JN9JLVFdjuNeD3DJRCMj4V-rSw3Nxm_vWHn8fkLewnR36dwlUrhxTEAVrnIFbhE857qgKHt3iJha21oB2QkMx4Y6qWsq5KicukfENhxa3NHd3wbsi1qM.&CMCD=mtp%3D94300%2Cot%3Dm%2Csf%3Dh%2Csid%3D%2255627c32-3e65-40bc-aa63-ebdabfc6d4db%22'
    },
  ];

  VideoPlayerController? _videoPlayerController;
  bool _isPlaying = false;
  String _currentStreamTitle = '';

  @override
  void dispose() {
    _videoPlayerController?.dispose();
    super.dispose();
  }

  void _playStream(String url, String title) async {
    if (_videoPlayerController != null) {
      await _videoPlayerController!.dispose();
    }

    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(url));

    try {
      await _videoPlayerController!.initialize();
      setState(() {
        _isPlaying = true;
        _currentStreamTitle = title;
      });
      _videoPlayerController!.play();
    } catch (e) {
      print('Error initializing video player: $e');
      setState(() {
        _isPlaying = false;
        _currentStreamTitle = 'Error playing stream: $title';
      });
      // Optionally show an error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not play stream: $title. It might be unavailable.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Menu'),
      ),
      body: Column(
        children: [
          if (_isPlaying && _videoPlayerController!.value.isInitialized)
            AspectRatio(
              aspectRatio: _videoPlayerController!.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController!),
            )
          else if (_isPlaying && !_videoPlayerController!.value.isInitialized)
            const Center(child: CircularProgressIndicator())
          else
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  _currentStreamTitle.isEmpty
                      ? 'Select a stream to play.'
                      : _currentStreamTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          if (_isPlaying)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Now playing: $_currentStreamTitle',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          Expanded(
            child: ListView.builder(
              itemCount: streams.length,
              itemBuilder: (context, index) {
                final stream = streams[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: ListTile(
                    title: Text(stream['title']!),
                    onTap: () => _playStream(stream['url']!, stream['title']!),
                    leading: const Icon(Icons.play_arrow),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: _isPlaying
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  _videoPlayerController!.value.isPlaying
                      ? _videoPlayerController!.pause()
                      : _videoPlayerController!.play();
                });
              },
              child: Icon(
                _videoPlayerController!.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
            )
          : null,
    );
  }
}
