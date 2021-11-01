# classic-asp-json-builder

<h4>Due to a very limited resources for classic ASP, I have created my own JSON builder. Documentation is already cooking!</h4>

## Sample syntax for warriors!

```vbscript
jb = new JsonBuilder()

jb.startCreation
  jb.addData "name", "Poseidon"
  jb.addData "age", 1000
  
  jb.addArray "sons"
    jb.addArrayData "percy"
    jb.addArrayData "atlas"
  jb.endArray
  
  jh.addArrayData "power"
    jh.addArrayObject
      jh.addData "power", "Booty Slap"
      jh.addData "damage" 4000
    jh.endArrayObject
    
    
    jh.addArrayObject
      jh.addData "power", "Fart Bomb"
      jh.addData "damage" 3000
    jh.endArrayObject
  jh.endArrayData
  
jb.endCreation

print(jb.getJson())
```

### Output

```json
{
	"name": "poseidon",
	"age": 1000,

	"sons": ["percy", "atlas"],
	"power": [
	  	{
			"power": "Boot Slap",
			"damage": 4000
		},
		{
			"power": "Fart Bomb",
			"damage": 3000
		}
	]

}
```

