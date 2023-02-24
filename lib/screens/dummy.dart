import 'package:flutter/material.dart';

import 'package:loans/exports.dart';

class AgentProvider extends ChangeNotifier {
  final AgentProfile _agentProfile = AgentProfile();
  String _name = '';

  Future<void> fetchAgentData() async {
    try {
      final agent = await _agentProfile.getAgent();
      _name = agent.name;
    } catch (error) {
      // Handle any errors that occur during the fetch.
      // For example, you could log the error or display an error message.
      // print('Error fetching agent data: $error');
    }

    notifyListeners();
  }

  String get name => _name;
}
