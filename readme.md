# Dump

<img src="https://raw.githubusercontent.com/IanBellomy/Dump/master/example.png" width=582 height=374>
[Video Example.](https://vimeo.com/177741747)


### What?

Framer's default import is safe but the results are cumbersome to work with. 

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
