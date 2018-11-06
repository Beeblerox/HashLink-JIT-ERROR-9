package issue;

// code crashes when you try to use this abstract instead of std.Array
abstract Array<T>(std.Array<T>) from std.Array<T> to std.Array<T> 
{
    inline public function new() 
    {
        this = [];
    }
}