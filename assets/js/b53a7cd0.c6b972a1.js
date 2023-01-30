"use strict";(self.webpackChunkdocs=self.webpackChunkdocs||[]).push([[33],{25326:e=>{e.exports=JSON.parse('{"functions":[{"name":"commandInit","desc":"Initialises all of the commands that MathPlus uses. E.g: MathPlus.abs()\\nIf the command we try and get fails, we error and state which module errors witth what happened\\nElse we delete currentmodule and forget about it.","params":[],"returns":[],"function_type":"static","source":{"line":20,"path":"src/init.lua"}},{"name":"classInit","desc":"Similar to commandInit, where it puts all of the commands into the MathPlus table,\\ncommandInit requires all of the classes in src/Classes and puts them into the mathPlus table\\nUses currentClass for errors for easy tracing of where errors occur.\\nDeletes currentClass if no errors occur.","params":[],"returns":[],"function_type":"static","source":{"line":51,"path":"src/init.lua"}},{"name":"init","desc":"Runs classInit and commandInit and then returns our module ready for use by other scripts","params":[{"name":"nil","desc":"","lua_type":"nil"}],"returns":[{"desc":"","lua_type":"table"}],"function_type":"method","source":{"line":85,"path":"src/init.lua"}}],"properties":[],"types":[],"name":"MathPlusInitialiser","desc":"MathPlus Initialiser, Allows you to run MathPlus.commandName","source":{"line":8,"path":"src/init.lua"}}')}}]);