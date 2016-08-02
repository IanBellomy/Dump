# Dump

Why write:

````coffeescript
psd = Framer.Importer.load("imported/Document@1x")
psd.button1.onMouseDown ->
	@childrenWithName("assets")[0].childrenWithName("label")[0].animate . . .
````

When you could write:

````coffeescript
Framer.Importer.load("imported/Document@1x")
button1.onMouseDown ->
	@assets.label.animate . . .
````

### What?

The Dump snippet modifies Framer's import so that: 

- Variables are created for imported layers based on their layer names.
- Imported layers have properties that correspond to their sub layers' names.

Q: "Couldn't this overwrite layer properties and methods?"

A: Yes.

- Don't name your layer groups "x", "width", "Framer", "states", "animate", etc. 
- SaferDump.coffee will alert you when something is overwritten. Fixing the imported document is easy.
- We're bashing out prototypes, not writing production code.




### Installation

Place `Dump.coffee` and/or `SaferDump.coffee` in your snippets folder. 

You can find your snippets folder in Framer by clicking 'Snippets > Show Snippets Folder'
