contract R3-Zero-Registry {
  mapping (address => string) participantRegistry;

  function addParticipant(string participant) {
    participantRegistry[msg.sender] = participant;
  }

  function getMyAdress() constant returns (string) {
    return participantRegistry[msg.sender];
  }

  function removeParticipant(string participant) {
	if(participantRegistry[participant] != 0 && participant !="")
		participantRegistry[participant] = 0x0;
  }

  function listAllParticipants() returns participantRegistry {
	return participantRegistry;
  }
}

