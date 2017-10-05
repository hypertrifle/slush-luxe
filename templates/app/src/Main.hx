import luxe.GameConfig;
import luxe.Input;
import luxe.States;
import states.*;
import systems.*;

class Main extends luxe.Game {

    override function config(config:GameConfig) {

        config.window.width = 960;
        config.window.height = 640;
        config.window.fullscreen = false;
        
        //config.preload.textures.push({id:'assets/img/'});
        //config.preload.texts.push({id:'assets/text/'});


        return config;

    } //config


	public static var machine : States;


    override function ready() {
        
        //set up our input bindings.
        connect_input();

        //our state machine.
    	machine = new States({ name:'statemachine' });
    	// machine.add(new PlayState('play_state'));


    	Luxe.on(init, function(_) {
    	    // machine.set('state');
    	});

    } //ready

    override function onkeyup( e:KeyEvent ) {

        if(e.keycode == Key.escape) {
            Luxe.shutdown();
        }

    } //onkeyup

    override function update(dt:Float) {

    } //update

    
    function connect_input() {

        Luxe.input.bind_key('up', Key.up);
        Luxe.input.bind_key('up', Key.key_w);
        Luxe.input.bind_key('right', Key.right);
        Luxe.input.bind_key('right', Key.key_d);
        Luxe.input.bind_key('down', Key.down);
        Luxe.input.bind_key('down', Key.key_s);
        Luxe.input.bind_key('left', Key.left);
        Luxe.input.bind_key('left', Key.key_a);
        Luxe.input.bind_key('space', Key.space);
        Luxe.input.bind_key('debug', Key.key_q);
        Luxe.input.bind_key('enter', Key.enter);
        Luxe.input.bind_key('reset', Key.key_r);

    }


} //Main
