import raylib { Color, begin_drawing, clear_background, close_window, draw_text, end_drawing, init_window, set_target_fps, window_should_close }

init_window(800, 600, 'Example of using V and Raylib together')
defer { close_window() }

set_target_fps(60)
for !window_should_close() {
	begin_drawing()
	defer { end_drawing() }
	clear_background(Color{255, 255, 255, 255})
	draw_text('Hello from V and Raylib.', 160, 270, 40, Color{0, 0, 200, 255})
}
