<%

Class JsonBuilder
	
	private mOutput
	private mData
	private mDataCount
	
	public sub startCreation()
		mOutput = "{"
		mDataCount = 0
	end sub
	
	
	public sub addData(identifier, data)
	
		if typename(data) = "String" then
			mData = chr(34) & identifier & chr(34) & ":" & chr(34) & data & chr(34)
		elseif typename(data) = "Boolean" then
			mData = chr(34) & identifier & chr(34) & ":" & lcase(cstr(data)) 
		else
			mData = chr(34) & identifier & chr(34) & ":" & data 
		end if
	
	
		if mDataCount = 0 then
			mOutput = mOutput & mData
		else 
			mOutput = mOutput & "," & mData
		end if

		mDataCount = mDataCount + 1
	end sub
	
	'OBJECT ------------------------------------------------
	
	public sub addObject(identifier)
		mData = chr(34) & identifier & chr(34) & ": {"
		
		if mDataCount = 0 then
			mOutput = mOutput & mData
		else 
			mOutput = mOutput & "," & mData
		end if
		
		mDataCount = 0
	end sub
	
	public sub endObject()
		mOutput = mOutput & "}"
	end sub
	
	'-------------------------------------------------------
	
	
	'ARRAY -------------------------------------------------
	
	public sub addArray(identifier)
		mData = chr(34) & identifier & chr(34) & ": ["
		
		if mDataCount = 0 then
			mOutput = mOutput & mData
		else 
			mOutput = mOutput & "," & mData
		end if
		
		mDataCount = 0
	end sub
	
	
	public sub addArrayData(data)
	
		if typename(data) = "String" then
			mData = chr(34) & data & chr(34)
		elseif typename(data) = "Boolean" then
			mData = lcase(cstr(data))
		else
			mData = data
		end if
	
	
		if mDataCount = 0 then
			mOutput = mOutput & mData
		else 
			mOutput = mOutput & "," & mData
		end if

		mDataCount = mDataCount + 1
	end sub
	
	
	public sub addArrayObject()
		mData = "{"
		
		if mDataCount = 0 then
			mOutput = mOutput & mData
		else 
			mOutput = mOutput & "," & mData
		end if
		
		
		mDataCount = 0
	end sub
	
	
	public sub endArrayObject()
		mOutput = mOutput & "}"
	end sub
	
	
	public sub endArray()
		mOutput = mOutput & "]"
	end sub
	
	'-------------------------------------------------------
	
	public sub endCreation()
		mOutput = mOutput & "}"
	end sub	
	
	
	public function getJson()
		getJson = mOutput
	end function	
	
End Class


%>