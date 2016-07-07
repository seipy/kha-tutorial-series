package;

import kha.Framebuffer;
import kha.System;
import kha.Key;
import kha.input.Keyboard;
import kha.input.Mouse;

class Project {
	public function new() {
		Mouse.get().notify(onMouseDown, null, null, null);
		Keyboard.get().notify(onKeyDown, null);
	}

	public function update():Void {
		
	}

	public function render(framebuffer:Framebuffer):Void {
		
	}
	
	public function onMouseDown(button:Int, x:Int, y:Int){
		if (button == 0){
			System.requestShutdown();
		}
	}
	
	public function onKeyDown(key:Key, value:String){
		switch (key){
			case CHAR:
			if (value == 'q'){
				System.requestShutdown();
			}
		default: return;
		}
	}
}
