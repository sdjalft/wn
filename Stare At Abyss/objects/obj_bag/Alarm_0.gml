/// @description 创建事件
// 你可以在此编辑器中写入代码

var _items = ds_map_create();
ds_map_copy(_items,fatherId.bag);
var _size = ds_map_size(_items);
var _key = ds_map_find_first(_items);
var _location = 0;	//定位item位置
items = ds_list_create();
for (var _cc = 0; _cc < _size; _cc += 1){
	var _inst = instance_create_layer(x,y,"Bag",obj_itemInBag);
	_inst.fatherId = self;
	_inst.itemId = _key;
	_inst.amount = _items[? _key];
	_inst.location = _location;
	_location += 1;
	_key = ds_map_find_next(_items,_key);
	ds_list_add(items,_inst);
}
