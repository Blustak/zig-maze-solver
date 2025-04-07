const Window = @import("window.zig").Window;

pub fn main() !void {
    const screenWidth: i32 = 800;
    const screenHeight: i32 = 450;
    const win = Window.init(screenWidth, screenHeight, 60);
    win.draw();
}
