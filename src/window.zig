const rl = @import("raylib");

pub const Window = struct {
    screen_width: i32,
    screen_height: i32,
    refresh_rate: i32,

    pub fn init(
        screen_width: i32,
        screen_height: i32,
        refresh_rate: i32,
    ) Window {
        return Window{
            .screen_width = screen_width,
            .screen_height = screen_height,
            .refresh_rate = refresh_rate,
        };
    }

    pub fn draw(self: Window) void {
        rl.initWindow(self.screen_width, self.screen_height, "zig maze solver");
        defer rl.closeWindow();
        rl.setTargetFPS(self.refresh_rate);
        while (!rl.windowShouldClose()) {
            redraw();
        }
    }

    fn redraw() void {
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(.ray_white);
        rl.drawText("gayboi", 10, 10, 20, .black);
    }
};
