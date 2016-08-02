plugin.run = (contents, options) ->
	"""	
# Start Dump
Dump = (obj)->		
	if obj instanceof Framer.Layer	
		Dump(obj[child.name] = child) for child in obj.children
	else 
		Dump(eval(layerName + " = layer;")) for layerName, layer of obj when !layer.parent?
	return obj	
oldLoad = Framer.Importer.load
Framer.Importer.load = (path) => Dump(oldLoad(path))
# End Dump

#{contents}
"""