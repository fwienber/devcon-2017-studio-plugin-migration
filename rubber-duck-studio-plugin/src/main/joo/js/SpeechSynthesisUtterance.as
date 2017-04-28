package js {

[Native("SpeechSynthesisUtterance")]
public class SpeechSynthesisUtterance {
  public function SpeechSynthesisUtterance(text:String = null) {
  }

  /**
   * The language of the utterance.
   */
  public native function get lang():String;

  /**
   * @private
   */
  public native function set lang(value:String):void;

  /**
   * The pitch at which the utterance will be spoken at.
   */
  public native function get pitch():Number;

  /**
   * @private
   */
  public native function set pitch(value:Number):void;

  /**
   * The speed at which the utterance will be spoken at.
   */
  public native function get rate():Number;

  /**
   * @private
   */
  public native function set rate(value:Number):void;

  /**
   * The text that will be synthesised when the utterance is spoken.
   */
  public native function get text():String;

  /**
   * @private
   */
  public native function set text(value:String):void;

  /**
   * The volume that the utterance will be spoken at.
   */
  public native function get volume():Number;

  /**
   * @private
   */
  public native function set volume(value:Number):void;

}
}
