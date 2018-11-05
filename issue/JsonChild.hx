package issue;

// code crashes when you try to use this abstract instead of std.Array
abstract Array<T>(std.Array<T>) from std.Array<T> to std.Array<T> 
{
    inline public function new() 
    {
        this = [];
    }
}

class JsonChild {

    public var data:Array<Dynamic>;
    public var index:Int;

    public function new(data:Array<Dynamic>, index:Int) {
        this.data = data;
        this.index = index;
    }

    // If you comment out this property then code won't crash on HashLink target:
    public var size(get, never):Int;
    function get_size():Int {
        return data[index].length;
    }

}