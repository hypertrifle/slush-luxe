package entities;

import luxe.Entity;
import luxe.options.EntityOptions;

typedef <%= _.capitalize(name) %>Options = {
  >EntityOptions,

}


class <%= _.capitalize(name) %> extends Entity {

  public function new(options:<%= _.capitalize(name) %>Options) {
    super( options );
  }


  override function init(){

  }//init

  override function update(dt:Float){

  }//update

  // override function onkeyup(e:KeyEvent)
  // override function onkeydown(e:KeyEvent)


}//<%= _.capitalize(name) %>
