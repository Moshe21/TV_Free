import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MaterialApp(
    title: 'Sports Streaming',
    theme: ThemeData.dark(),
    home: StreamMenuPage(),
  ));
}

// -----------------------
// Página principal (menú)
// -----------------------
class StreamMenuPage extends StatelessWidget {
  final List<Map<String, String>> streams = [
    {
      'title': 'ESPN Premium',
      'url': 'https://socio.crackstreamslivehd.com/espn2/index.m3u8?token=c943a72c3c608b593785aeceabce9c3da6419b04-48-1747291985-1747259585&ip=190.60.194.112',
    },
    {
      'title': 'anime',
      'url': 'https://cfd-v4-service-channel-stitcher-use1-1.prd.pluto.tv/v2/stitch/hls/channel/5dcde17bf6591d0009839e02/3321280/playlist.m3u8?terminate=false&sid=500b05a0-3127-11f0-8405-4aeff4b45d8b&deviceDNT=0&deviceLat=4.739999771118164&deviceLon=-74.04000091552734&deviceModel=web&deviceVersion=136.0.0&includeExtendedEvents=true&appName=web&DRMCapabilities=widevine&deviceId=f3551a03-92fa-4ea4-816e-13fa841ab360&appVersion=9.12.0-e2425380b67be936b703637b779ede1dc68f15fd&deviceType=web&deviceMake=chrome&jwt=eyJhbGciOiJIUzI1NiIsImtpZCI6ImQyMTdlYjM5LWE3MTMtNDliMi04OGE3LWQ3ZmQxNGY3YTQ2YyIsInR5cCI6IkpXVCJ9.eyJzZXNzaW9uSUQiOiI1MDBiMDVhMC0zMTI3LTExZjAtODQwNS00YWVmZjRiNDVkOGIiLCJjbGllbnRJUCI6IjE5MC42MC4xOTQuMTEyIiwiY2l0eSI6IkJvZ290YSIsInBvc3RhbENvZGUiOiIxMTAxMzEiLCJjb3VudHJ5IjoiQ08iLCJkbWEiOjAsImFjdGl2ZVJlZ2lvbiI6IlZFIiwiZGV2aWNlTGF0Ijo0LjczOTk5OTc3MTExODE2NCwiZGV2aWNlTG9uIjotNzQuMDQwMDAwOTE1NTI3MzQsInByZWZlcnJlZExhbmd1YWdlIjoiZXMiLCJkZXZpY2VUeXBlIjoid2ViIiwiZGV2aWNlVmVyc2lvbiI6IjEzNi4wLjAiLCJkZXZpY2VNYWtlIjoiY2hyb21lIiwiZGV2aWNlTW9kZWwiOiJ3ZWIiLCJhcHBOYW1lIjoid2ViIiwiYXBwVmVyc2lvbiI6IjkuMTIuMC1lMjQyNTM4MGI2N2JlOTM2YjcwMzYzN2I3NzllZGUxZGM2OGYxNWZkIiwiY2xpZW50SUQiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJjbUF1ZGllbmNlSUQiOiIiLCJpc0NsaWVudEROVCI6ZmFsc2UsInVzZXJJRCI6IiIsImxvZ0xldmVsIjoiREVGQVVMVCIsInRpbWVab25lIjoiQW1lcmljYS9Cb2dvdGEiLCJzZXJ2ZXJTaWRlQWRzIjpmYWxzZSwiZTJlQmVhY29ucyI6ZmFsc2UsImZlYXR1cmVzIjp7Im11bHRpUG9kQWRzIjp7ImVuYWJsZWQiOnRydWV9fSwiZm1zUGFyYW1zIjp7ImZ3VmNJRDIiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJmd1ZjSUQyQ29wcGEiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJjdXN0b21QYXJhbXMiOnsiZm1zX2xpdmVyYW1wX2lkbCI6IiIsImZtc19lbWFpbGhhc2giOiIiLCJmbXNfc3Vic2NyaWJlcmlkIjoiIiwiZm1zX2lmYSI6IiIsImZtc19pZGZ2IjoiIiwiZm1zX3VzZXJpZCI6ImYzNTUxYTAzLTkyZmEtNGVhNC04MTZlLTEzZmE4NDFhYjM2MCIsImZtc192Y2lkMnR5cGUiOiJ1c2VyaWQiLCJmbXNfcmFtcF9pZCI6IiIsImZtc19oaF9yYW1wX2lkIjoiIiwiZm1zX2JpZGlkdHlwZSI6IiIsIl9md18zUF9VSUQiOiIiLCJmbXNfcnVsZWlkIjoiMTAwMDksMTAwMDMsMTAwMTUsMTAwMjAsMTAwMDAsMTAwMTQsMTAwMTYsMTAwMjEsMTAwMTMifX0sImRybSI6eyJuYW1lIjoid2lkZXZpbmUiLCJsZXZlbCI6IkwzIn0sImlzcyI6ImJvb3QucGx1dG8udHYiLCJzdWIiOiJwcmk6djE6cGx1dG86ZGV2aWNlczpWRTpaak0xTlRGaE1ETXRPVEptWVMwMFpXRTBMVGd4Tm1VdE1UTm1ZVGcwTVdGaU16WXciLCJhdWQiOiIqLnBsdXRvLnR2IiwiZXhwIjoxNzQ3MzU2OTM2LCJpYXQiOjE3NDcyNzA1MzYsImp0aSI6IjYwOWZmNzg0LWM2ZWYtNGJlNS04MjU4LWQ1Njc1ZGUwYmE2NiJ9.ZLKwzDVg1UPF3sj0P1355jxxMvp1QhCIorxVxzwKw7M&paln=AQzzBGQEbpkOM-XPvhh2clox5ayTCv1W5G1LQOgXImzC9RqJw1wENWMJkf4M4nzU-Ma-OCOEZTdkkX5ECHemjVZ_Y6JWBSsrXi3eTIMh8iNTG75DClt9P8CnD2VTr90by-KC2_6bihLBIaw-69cBTgu1kHYx7wSlcLc2Imj6-NUBamHYEqcPnIYYzp25R0F9x7T9veKe-JVtWdOAXXvpn__2SK-CKsBWRNdlnZrORiyfVluuLh8V35c9BZfqSq5rOFiLVe3G8_EcG8rmPPpXPOB-k7b7alyYwgyvUo9c8YZgdh9KzKV6Adbqz3cU8qbd7UgKTuq4x6g8zsuD77bfvlcJteUMKr1J05HajN_TwkaCXOjtIN0265tVPyQjCzvAcorrWGoIp59v4evJtlL6uCdO__ZFWNy7Z-3Bo9v56qd7WYbV5xQ7jWiEyyexJ7fMsufms-QxNzPEu8aVeO4m7lehvBYbQ2oCFOmu6-m41PY27hcgRf636EeaA7BhVkl_go6INIKEXRzm2aPYSbiB3tGQCCVLxEKs1LLV50iezrOu2pyPlGNCJO9WWDY4yNAvX_0ltTl_4yyl8DD6Ji6HyqWiP_nQhl2zwfZZS-OMbXMxkGEAGdjdW41fipUagi9XBJlIBiUuRdOOUXm8tX_p0m8L7-Z3AtyrW1j0rWgY5izHv2S_PZaWgNI5GN177yzWxdeQlqnmVqA83Fx1TPR46QjgOdesp5cKUBpFTPiwyn6UOYzMEcmg8F1MWviEw7kONlWiILKNw_LeLHar0jOj6Rw3A9t7TSvWytkVu07VIV0IKik5rv59QuIinfFqlvSdDEpramoV7tVEtmfcR7L1Um-87JqK6Mj84SnFx4j-JuDibPKz1mgxDstcTO9cGj3UOCTGakqFsxGj1VgrS1Ip-Z5Q8Evf26D2K28LK2YltjM2zlQ5bAMu1tquGhiGbW-r6-kTVLFklbdD4KoasdwINXXlIWY3kXMEqkAnkdT5keAidQlrBID0MtMSM-jHjoyUPAr4-Le8PIigErdm6eM6bCJQdf-CK11hVRUb2OwWsY3KPV8Ai6-97BwZiDdH2rAqz5fiRagj1VHzG6LJ3vJvzsw2uD9AQ40IGoWrAbsizHqG-6ulUxzCrGJRSsgaR6d3XqO4w1RyGiDRWv0SDs1ln8JrlfZF6PDsTDNCBP0oKKSmW8tJJp6kaD-1BkL0E7og0TUKJqPqjGbF1Ccf-PU8r9E3Ita732XSgJUHWU7u3RH3QuXPiedajtyARZwvEU15oheWVt6eiHVKS6CJ2UFbWqOR_u3JN9JLVFdjuNeD3DJRCMj4V-rSw3Nxm_vWHn8fkLewnR36dwlUrhxTEAVrnIFbhE857qgKHt3iJha21oB2QkMx4Y6qWsq5KicukfENhxa3NHd3wbsi1qM.&CMCD=mtp%3D94300%2Cot%3Dm%2Csf%3Dh%2Csid%3D%2255627c32-3e65-40bc-aa63-ebdabfc6d4db%22',
    },
    {
      'title': 'TNT',
      'url': 'https://live2.sdfgnksbounce.com:9091/41_/index.m3u8?token=93efec2d519c20a9572dc9c4e4cbd966a668b54c-9f29233ecf3ddc2f8c0f5fe1eeb0a314-1747287120-1747269120&amp;remote=190.60.194.112',
    },
    {
      'title': 'music',
      'url': 'https://cfd-v4-service-channel-stitcher-use1-1.prd.pluto.tv/v2/stitch/hls/channel/5dcde17bf6591d0009839e02/3321280/playlist.m3u8?terminate=false&sid=500b05a0-3127-11f0-8405-4aeff4b45d8b&deviceDNT=0&deviceLat=4.739999771118164&deviceLon=-74.04000091552734&deviceModel=web&deviceVersion=136.0.0&includeExtendedEvents=true&appName=web&DRMCapabilities=widevine&deviceId=f3551a03-92fa-4ea4-816e-13fa841ab360&appVersion=9.12.0-e2425380b67be936b703637b779ede1dc68f15fd&deviceType=web&deviceMake=chrome&jwt=eyJhbGciOiJIUzI1NiIsImtpZCI6ImQyMTdlYjM5LWE3MTMtNDliMi04OGE3LWQ3ZmQxNGY3YTQ2YyIsInR5cCI6IkpXVCJ9.eyJzZXNzaW9uSUQiOiI1MDBiMDVhMC0zMTI3LTExZjAtODQwNS00YWVmZjRiNDVkOGIiLCJjbGllbnRJUCI6IjE5MC42MC4xOTQuMTEyIiwiY2l0eSI6IkJvZ290YSIsInBvc3RhbENvZGUiOiIxMTAxMzEiLCJjb3VudHJ5IjoiQ08iLCJkbWEiOjAsImFjdGl2ZVJlZ2lvbiI6IlZFIiwiZGV2aWNlTGF0Ijo0LjczOTk5OTc3MTExODE2NCwiZGV2aWNlTG9uIjotNzQuMDQwMDAwOTE1NTI3MzQsInByZWZlcnJlZExhbmd1YWdlIjoiZXMiLCJkZXZpY2VUeXBlIjoid2ViIiwiZGV2aWNlVmVyc2lvbiI6IjEzNi4wLjAiLCJkZXZpY2VNYWtlIjoiY2hyb21lIiwiZGV2aWNlTW9kZWwiOiJ3ZWIiLCJhcHBOYW1lIjoid2ViIiwiYXBwVmVyc2lvbiI6IjkuMTIuMC1lMjQyNTM4MGI2N2JlOTM2YjcwMzYzN2I3NzllZGUxZGM2OGYxNWZkIiwiY2xpZW50SUQiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJjbUF1ZGllbmNlSUQiOiIiLCJpc0NsaWVudEROVCI6ZmFsc2UsInVzZXJJRCI6IiIsImxvZ0xldmVsIjoiREVGQVVMVCIsInRpbWVab25lIjoiQW1lcmljYS9Cb2dvdGEiLCJzZXJ2ZXJTaWRlQWRzIjpmYWxzZSwiZTJlQmVhY29ucyI6ZmFsc2UsImZlYXR1cmVzIjp7Im11bHRpUG9kQWRzIjp7ImVuYWJsZWQiOnRydWV9fSwiZm1zUGFyYW1zIjp7ImZ3VmNJRDIiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJmd1ZjSUQyQ29wcGEiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJjdXN0b21QYXJhbXMiOnsiZm1zX2xpdmVyYW1wX2lkbCI6IiIsImZtc19lbWFpbGhhc2giOiIiLCJmbXNfc3Vic2NyaWJlcmlkIjoiIiwiZm1zX2lmYSI6IiIsImZtc19pZGZ2IjoiIiwiZm1zX3VzZXJpZCI6ImYzNTUxYTAzLTkyZmEtNGVhNC04MTZlLTEzZmE4NDFhYjM2MCIsImZtc192Y2lkMnR5cGUiOiJ1c2VyaWQiLCJmbXNfcmFtcF9pZCI6IiIsImZtc19oaF9yYW1wX2lkIjoiIiwiZm1zX2JpZGlkdHlwZSI6IiIsIl9md18zUF9VSUQiOiIiLCJmbXNfcnVsZWlkIjoiMTAwMDksMTAwMDMsMTAwMTUsMTAwMjAsMTAwMDAsMTAwMTQsMTAwMTYsMTAwMjEsMTAwMTMifX0sImRybSI6eyJuYW1lIjoid2lkZXZpbmUiLCJsZXZlbCI6IkwzIn0sImlzcyI6ImJvb3QucGx1dG8udHYiLCJzdWIiOiJwcmk6djE6cGx1dG86ZGV2aWNlczpWRTpaak0xTlRGaE1ETXRPVEptWVMwMFpXRTBMVGd4Tm1VdE1UTm1ZVGcwTVdGaU16WXciLCJhdWQiOiIqLnBsdXRvLnR2IiwiZXhwIjoxNzQ3MzU2OTM2LCJpYXQiOjE3NDcyNzA1MzYsImp0aSI6IjYwOWZmNzg0LWM2ZWYtNGJlNS04MjU4LWQ1Njc1ZGUwYmE2NiJ9.ZLKwzDVg1UPF3sj0P1355jxxMvp1QhCIorxVxzwKw7M&paln=AQzzBGQEbpkOM-XPvhh2clox5ayTCv1W5G1LQOgXImzC9RqJw1wENWMJkf4M4nzU-Ma-OCOEZTdkkX5ECHemjVZ_Y6JWBSsrXi3eTIMh8iNTG75DClt9P8CnD2VTr90by-KC2_6bihLBIaw-69cBTgu1kHYx7wSlcLc2Imj6-NUBamHYEqcPnIYYzp25R0F9x7T9veKe-JVtWdOAXXvpn__2SK-CKsBWRNdlnZrORiyfVluuLh8V35c9BZfqSq5rOFiLVe3G8_EcG8rmPPpXPOB-k7b7alyYwgyvUo9c8YZgdh9KzKV6Adbqz3cU8qbd7UgKTuq4x6g8zsuD77bfvlcJteUMKr1J05HajN_TwkaCXOjtIN0265tVPyQjCzvAcorrWGoIp59v4evJtlL6uCdO__ZFWNy7Z-3Bo9v56qd7WYbV5xQ7jWiEyyexJ7fMsufms-QxNzPEu8aVeO4m7lehvBYbQ2oCFOmu6-m41PY27hcgRf636EeaA7BhVkl_go6INIKEXRzm2aPYSbiB3tGQCCVLxEKs1LLV50iezrOu2pyPlGNCJO9WWDY4yNAvX_0ltTl_4yyl8DD6Ji6HyqWiP_nQhl2zwfZZS-OMbXMxkGEAGdjdW41fipUagi9XBJlIBiUuRdOOUXm8tX_p0m8L7-Z3AtyrW1j0rWgY5izHv2S_PZaWgNI5GN177yzWxdeQlqnmVqA83Fx1TPR46QjgOdesp5cKUBpFTPiwyn6UOYzMEcmg8F1MWviEw7kONlWiILKNw_LeLHar0jOj6Rw3A9t7TSvWytkVu07VIV0IKik5rv59QuIinfFqlvSdDEpramoV7tVEtmfcR7L1Um-87JqK6Mj84SnFx4j-JuDibPKz1mgxDstcTO9cGj3UOCTGakqFsxGj1VgrS1Ip-Z5Q8Evf26D2K28LK2YltjM2zlQ5bAMu1tquGhiGbW-r6-kTVLFklbdD4KoasdwINXXlIWY3kXMEqkAnkdT5keAidQlrBID0MtMSM-jHjoyUPAr4-Le8PIigErdm6eM6bCJQdf-CK11hVRUb2OwWsY3KPV8Ai6-97BwZiDdH2rAqz5fiRagj1VHzG6LJ3vJvzsw2uD9AQ40IGoWrAbsizHqG-6ulUxzCrGJRSsgaR6d3XqO4w1RyGiDRWv0SDs1ln8JrlfZF6PDsTDNCBP0oKKSmW8tJJp6kaD-1BkL0E7og0TUKJqPqjGbF1Ccf-PU8r9E3Ita732XSgJUHWU7u3RH3QuXPiedajtyARZwvEU15oheWVt6eiHVKS6CJ2UFbWqOR_u3JN9JLVFdjuNeD3DJRCMj4V-rSw3Nxm_vWHn8fkLewnR36dwlUrhxTEAVrnIFbhE857qgKHt3iJha21oB2QkMx4Y6qWsq5KicukfENhxa3NHd3wbsi1qM.&CMCD=mtp%3D94300%2Cot%3Dm%2Csf%3Dh%2Csid%3D%2255627c32-3e65-40bc-aa63-ebdabfc6d4db%22',
    },
    {
      'title': 'viajes',
      'url': 'https://cfd-v4-service-channel-stitcher-use1-1.prd.pluto.tv/v2/stitch/hls/channel/5dcde17bf6591d0009839e02/3321280/playlist.m3u8?terminate=false&sid=500b05a0-3127-11f0-8405-4aeff4b45d8b&deviceDNT=0&deviceLat=4.739999771118164&deviceLon=-74.04000091552734&deviceModel=web&deviceVersion=136.0.0&includeExtendedEvents=true&appName=web&DRMCapabilities=widevine&deviceId=f3551a03-92fa-4ea4-816e-13fa841ab360&appVersion=9.12.0-e2425380b67be936b703637b779ede1dc68f15fd&deviceType=web&deviceMake=chrome&jwt=eyJhbGciOiJIUzI1NiIsImtpZCI6ImQyMTdlYjM5LWE3MTMtNDliMi04OGE3LWQ3ZmQxNGY3YTQ2YyIsInR5cCI6IkpXVCJ9.eyJzZXNzaW9uSUQiOiI1MDBiMDVhMC0zMTI3LTExZjAtODQwNS00YWVmZjRiNDVkOGIiLCJjbGllbnRJUCI6IjE5MC42MC4xOTQuMTEyIiwiY2l0eSI6IkJvZ290YSIsInBvc3RhbENvZGUiOiIxMTAxMzEiLCJjb3VudHJ5IjoiQ08iLCJkbWEiOjAsImFjdGl2ZVJlZ2lvbiI6IlZFIiwiZGV2aWNlTGF0Ijo0LjczOTk5OTc3MTExODE2NCwiZGV2aWNlTG9uIjotNzQuMDQwMDAwOTE1NTI3MzQsInByZWZlcnJlZExhbmd1YWdlIjoiZXMiLCJkZXZpY2VUeXBlIjoid2ViIiwiZGV2aWNlVmVyc2lvbiI6IjEzNi4wLjAiLCJkZXZpY2VNYWtlIjoiY2hyb21lIiwiZGV2aWNlTW9kZWwiOiJ3ZWIiLCJhcHBOYW1lIjoid2ViIiwiYXBwVmVyc2lvbiI6IjkuMTIuMC1lMjQyNTM4MGI2N2JlOTM2YjcwMzYzN2I3NzllZGUxZGM2OGYxNWZkIiwiY2xpZW50SUQiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJjbUF1ZGllbmNlSUQiOiIiLCJpc0NsaWVudEROVCI6ZmFsc2UsInVzZXJJRCI6IiIsImxvZ0xldmVsIjoiREVGQVVMVCIsInRpbWVab25lIjoiQW1lcmljYS9Cb2dvdGEiLCJzZXJ2ZXJTaWRlQWRzIjpmYWxzZSwiZTJlQmVhY29ucyI6ZmFsc2UsImZlYXR1cmVzIjp7Im11bHRpUG9kQWRzIjp7ImVuYWJsZWQiOnRydWV9fSwiZm1zUGFyYW1zIjp7ImZ3VmNJRDIiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJmd1ZjSUQyQ29wcGEiOiJmMzU1MWEwMy05MmZhLTRlYTQtODE2ZS0xM2ZhODQxYWIzNjAiLCJjdXN0b21QYXJhbXMiOnsiZm1zX2xpdmVyYW1wX2lkbCI6IiIsImZtc19lbWFpbGhhc2giOiIiLCJmbXNfc3Vic2NyaWJlcmlkIjoiIiwiZm1zX2lmYSI6IiIsImZtc19pZGZ2IjoiIiwiZm1zX3VzZXJpZCI6ImYzNTUxYTAzLTkyZmEtNGVhNC04MTZlLTEzZmE4NDFhYjM2MCIsImZtc192Y2lkMnR5cGUiOiJ1c2VyaWQiLCJmbXNfcmFtcF9pZCI6IiIsImZtc19oaF9yYW1wX2lkIjoiIiwiZm1zX2JpZGlkdHlwZSI6IiIsIl9md18zUF9VSUQiOiIiLCJmbXNfcnVsZWlkIjoiMTAwMDksMTAwMDMsMTAwMTUsMTAwMjAsMTAwMDAsMTAwMTQsMTAwMTYsMTAwMjEsMTAwMTMifX0sImRybSI6eyJuYW1lIjoid2lkZXZpbmUiLCJsZXZlbCI6IkwzIn0sImlzcyI6ImJvb3QucGx1dG8udHYiLCJzdWIiOiJwcmk6djE6cGx1dG86ZGV2aWNlczpWRTpaak0xTlRGaE1ETXRPVEptWVMwMFpXRTBMVGd4Tm1VdE1UTm1ZVGcwTVdGaU16WXciLCJhdWQiOiIqLnBsdXRvLnR2IiwiZXhwIjoxNzQ3MzU2OTM2LCJpYXQiOjE3NDcyNzA1MzYsImp0aSI6IjYwOWZmNzg0LWM2ZWYtNGJlNS04MjU4LWQ1Njc1ZGUwYmE2NiJ9.ZLKwzDVg1UPF3sj0P1355jxxMvp1QhCIorxVxzwKw7M&paln=AQzzBGQEbpkOM-XPvhh2clox5ayTCv1W5G1LQOgXImzC9RqJw1wENWMJkf4M4nzU-Ma-OCOEZTdkkX5ECHemjVZ_Y6JWBSsrXi3eTIMh8iNTG75DClt9P8CnD2VTr90by-KC2_6bihLBIaw-69cBTgu1kHYx7wSlcLc2Imj6-NUBamHYEqcPnIYYzp25R0F9x7T9veKe-JVtWdOAXXvpn__2SK-CKsBWRNdlnZrORiyfVluuLh8V35c9BZfqSq5rOFiLVe3G8_EcG8rmPPpXPOB-k7b7alyYwgyvUo9c8YZgdh9KzKV6Adbqz3cU8qbd7UgKTuq4x6g8zsuD77bfvlcJteUMKr1J05HajN_TwkaCXOjtIN0265tVPyQjCzvAcorrWGoIp59v4evJtlL6uCdO__ZFWNy7Z-3Bo9v56qd7WYbV5xQ7jWiEyyexJ7fMsufms-QxNzPEu8aVeO4m7lehvBYbQ2oCFOmu6-m41PY27hcgRf636EeaA7BhVkl_go6INIKEXRzm2aPYSbiB3tGQCCVLxEKs1LLV50iezrOu2pyPlGNCJO9WWDY4yNAvX_0ltTl_4yyl8DD6Ji6HyqWiP_nQhl2zwfZZS-OMbXMxkGEAGdjdW41fipUagi9XBJlIBiUuRdOOUXm8tX_p0m8L7-Z3AtyrW1j0rWgY5izHv2S_PZaWgNI5GN177yzWxdeQlqnmVqA83Fx1TPR46QjgOdesp5cKUBpFTPiwyn6UOYzMEcmg8F1MWviEw7kONlWiILKNw_LeLHar0jOj6Rw3A9t7TSvWytkVu07VIV0IKik5rv59QuIinfFqlvSdDEpramoV7tVEtmfcR7L1Um-87JqK6Mj84SnFx4j-JuDibPKz1mgxDstcTO9cGj3UOCTGakqFsxGj1VgrS1Ip-Z5Q8Evf26D2K28LK2YltjM2zlQ5bAMu1tquGhiGbW-r6-kTVLFklbdD4KoasdwINXXlIWY3kXMEqkAnkdT5keAidQlrBID0MtMSM-jHjoyUPAr4-Le8PIigErdm6eM6bCJQdf-CK11hVRUb2OwWsY3KPV8Ai6-97BwZiDdH2rAqz5fiRagj1VHzG6LJ3vJvzsw2uD9AQ40IGoWrAbsizHqG-6ulUxzCrGJRSsgaR6d3XqO4w1RyGiDRWv0SDs1ln8JrlfZF6PDsTDNCBP0oKKSmW8tJJp6kaD-1BkL0E7og0TUKJqPqjGbF1Ccf-PU8r9E3Ita732XSgJUHWU7u3RH3QuXPiedajtyARZwvEU15oheWVt6eiHVKS6CJ2UFbWqOR_u3JN9JLVFdjuNeD3DJRCMj4V-rSw3Nxm_vWHn8fkLewnR36dwlUrhxTEAVrnIFbhE857qgKHt3iJha21oB2QkMx4Y6qWsq5KicukfENhxa3NHd3wbsi1qM.&CMCD=mtp%3D94300%2Cot%3Dm%2Csf%3Dh%2Csid%3D%2255627c32-3e65-40bc-aa63-ebdabfc6d4db%22',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sports Streaming')),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: streams.length,
        itemBuilder: (context, index) {
          final stream = streams[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              child: Text(stream['title']!, style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoPage(
                      title: stream['title']!,
                      videoUrl: stream['url']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// -----------------------
// Página del reproductor
// -----------------------
class VideoPage extends StatefulWidget {
  final String title;
  final String videoUrl;

  VideoPage({required this.title, required this.videoUrl});

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController _controller;

  final Map<String, String> customHeaders = {
    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:138.0) Gecko/20100101 Firefox/138.0',
    'Accept': '*/*',
    'Accept-Language': 'en-US,en;q=0.5',
    'Accept-Encoding': 'gzip, deflate, br, zstd',
    'Referer': 'https://capo5play.com/',
    'Origin': 'https://capo5play.com',
    'Connection': 'keep-alive',
  };

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
      httpHeaders: customHeaders,
    )
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying ? _controller.pause() : _controller.play();
          });
        },
        child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
