package js {

public interface ISpeechSynthesis {

  /**
   * Adds an utterance to the utterance queue; it will be spoken when any other utterances queued before it have been spoken.
   * @param utterance the utterance to add to the queue
   */
  function speak(utterance:SpeechSynthesisUtterance):void;

}
}
