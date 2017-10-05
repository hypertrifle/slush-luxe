package states;

import luxe.States;

class <%= _.capitalize(name) %> extends State {

  public function new(_name:String) {
        super({ name:_name }); 
  }//new

  override function init(){

  }//init

  override function onenter<T>(_value:T) {

  }//load of state

  override function onleave<T>(_value:T) {

  }//exit of state


  override function update(dt:Float){
    

  }//update

  // override function onkeyup(e:KeyEvent)
  // override function onkeydown(e:KeyEvent)

}//<%= name %>
