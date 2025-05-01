import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 252, 173, 3),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  final Map<String, String> _videoUrls = {
    'Video 1 (Network)':
   'https://www.capoplayer.met/play/winsportsplus.php',
    'Video 2 (Network)':
        'https://www.youtube.com/watch?v=v6tk0CxaVU8',
    'Video 3 (Network)':
        'https://www.youtube.com/watch?v=v6tk0CxaVU8',
  };

  String _selectedVideo = 'Video 1 (Network)';
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _isDisposed = false;

  @override
  void initState() {
    super.initState();
    _initializePlayer(_videoUrls[_selectedVideo]!);
  }

  Future<void> _initializePlayer(String videoUrl) async {
    if (_isDisposed) return;
    
    if (_videoPlayerController.hasListeners) {
      await _videoPlayerController.dispose();
    }

    _videoPlayerController = VideoPlayerController.network(
      videoUrl,
    );

    try {
      await _videoPlayerController.initialize();
      if (_isDisposed) return;
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: true,
        looping: true,
        aspectRatio: 16 / 9,
        showControls: true,
      );
      if (_isDisposed) return;
      setState(() {});
    } catch (e) {
      print('Error initializing video: $e');
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Error'),
            content: Text('Failed to load video: $e'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  void _changeVideo(String newVideo) {
    if (_selectedVideo != newVideo) {
      _selectedVideo = newVideo;
      _initializePlayer(_videoUrls[newVideo]!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reproductor de TV'),
        actions: [
          PopupMenuButton<String>(
            onSelected: _changeVideo,
            itemBuilder: (BuildContext context) {
              return _videoUrls.keys.map((String key) {
                return PopupMenuItem<String>(
                  value: key,
                  child: Text(key),
                );
              }).toList();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Select Video"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: _chewieController != null
            ? Chewie(controller: _chewieController!)
            : const CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    _isDisposed = true;
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }
}

