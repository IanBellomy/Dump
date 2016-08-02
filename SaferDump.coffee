plugin.run = (contents, options) ->
	"""	
#{contents}
# Start Dump
# Place this at the beginning of your file.
Dump = (obj)->		
	if obj instanceof Framer.Layer	
		for child in obj.children
			if obj[child.name] != undefined
				print "Dump:WARNING: Overwriting  "+obj.name+"." + child.name
			obj[child.name] = child
			Dump(child)	
	else		
		for layerName, layer of obj when layer.parent == null
			try 
				eval(layerName)	
				print "Dump:WARNING: Overwriting " + layerName
			str = layerName + " = layer;"
			eval(str)
			Dump(layer)
	return obj
oldLoad = Framer.Importer.load
Framer.Importer.load = (path) => Dump(oldLoad(path))
# End Dump
"""