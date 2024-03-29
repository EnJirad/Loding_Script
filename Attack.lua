-- attack1.lua
local module = {}

local At1 = "🔰 : "
local At1_Original = {}
local At1_Enabled = false

function module.attack1()
    if At1 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("-218184718", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        At1_Original = gg.getResults(1000)
        for i, v in ipairs(At1_Original) do
            At1_Original[i].freeze = true
        end
        gg.addListItems(At1_Original)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ตีรัวๆ แล้ว ✅")
        At1_Enabled = true
        At1 = "⛔ : "
    elseif At1 == "⛔ : " then
        if At1_Enabled then
            gg.setValues(At1_Original)
            if #At1_Original > 0 then
                gg.removeListItems(At1_Original)
                gg.clearResults()
                gg.toast("❌ ปิดฟังชั่น ตีรัวๆ แล้ว ❌")
            end
            At1_Enabled = false
        end
        At1 = "🔰 : "
    end
end

local At2 = "🔰 : "
local At2_Original = {}
local At2_Value = {}
local At2_Enabled = false

function module.attack2()
    if At2 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(";ᷙ柱       㾀", gg.TYPE_WORD)
        gg.refineNumber("16256", gg.TYPE_WORD)
        At2_Original = gg.getResults(8888)
        
        gg.editAll("16448", gg.TYPE_WORD)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ตีเร็ว แล้ว ✅")

        At2 = "⛔ : "
        At2_Enabled = true
    elseif At2 == "⛔ : " then
        if At2_Enabled then
            gg.clearResults()
            gg.setValues(At2_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น ตีเร็ว แล้ว ❌")
            At2_Enabled = false
        end
        At2 = "🔰 : "
    end
end


local At3 = "🔰 : "
local At3_Original = {}
local At3_Enabled = false

function module.attack3()
    if At3 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
        gg.searchNumber("Q'G'DBA4'a'00000000000000000000000000000000000080'?'00000000", gg.TYPE_BYTE)
        gg.refineNumber("Q000080'?", gg.TYPE_BYTE)
        At3_Original = gg.getResults(1000)
        gg.editAll("Q13'F'A3'@", gg.TYPE_BYTE)
        gg.clearResults()
        gg.toast("✅ เปิดฟังก์ชั่น ตีแบบกดค้างรัวๆ แล้ว ✅")
            
        At3 = "⛔ : "
        At3_Enabled = true
    elseif At3 == "⛔ : " then
        if At3_Enabled then
            gg.clearResults()
            gg.setValues(At3_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น ตีแบบกดค้างรัวๆ แล้ว ❌")
            At3_Enabled = false
        end
        At3 = "🔰 : "
    end
end


local At4 = "🔰 : "
local At4_RangesList = 0x7800CB4298
local At4_Original = nil
local At4_Enabled = false

function module.attack4()
    if At4 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        if At4_Original == nil then
            At4_Original = gg.getValues({{address = At4_RangesList, flags = gg.TYPE_FLOAT}})[1].value
        end
        
        gg.setValues({{address = At4_RangesList, value = 10, flags = gg.TYPE_FLOAT}})
        gg.toast("✅ เปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ✅")
        
        At4 = "⛔ : "
        At4_Enabled = true
    elseif At4 == "⛔ : " then
        if At4_Enabled then
            if At4_Original ~= nil then
                gg.setValues({{address = At4_RangesList, value = At4_Original, flags = gg.TYPE_FLOAT}})
            end
            gg.toast("❌ ปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ❌")
            At4_Enabled = false
        end
        At4 = "🔰 : "
    end
end

local At5 = "🔰 : "
local At5_Original = {}
local At5_Enabled = false

function module.attack5()
    if At5 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("1082977991", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
        At5_Original = gg.getResults(10)
        gg.editAll("1092977991", gg.TYPE_QWORD)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ชาร์จยิงธนูรัวๆ แล้ว ✅")
        
        At5 = "⛔ : "
        At5_Enabled = true
    elseif At5 == "⛔ : " then
        if At5_Enabled then
            gg.clearResults()
            gg.setValues(At5_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น ชาร์จยิงธนูรัวๆ แล้ว ❌")
            At5_Enabled = false
        end
        At5 = "🔰 : "
    end
end

        
local At6 = "🔰 : "
local At6_Original = {}
local At6_Enabled = false

function module.attack6()
    if At6 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber('h 20 BC BE 4C FF FF 7F 7F', gg.TYPE_BYTE)
        gg.refineNumber('h 20', gg.TYPE_BYTE)
        local At6_Original = gg.getResults(100)
          for i = 1, #At6_Original do
            At6_Original[i].address = At6_Original[i].address - 0x28
            At6_Original[i].value = '-1'
            At6_Original[i].flags = gg.TYPE_FLOAT
            At6_Original[i].freeze = true
          end
        gg.addListItems(At6_Original)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ตีทะลุกำแพง แล้ว ✅")
        
        At6 = "⛔ : "
        At6_Enabled = true
    elseif At6 == "⛔ : " then
        if At6_Enabled then
            local results = gg.getListItems()
            for i, item in ipairs(results) do
               table.insert(At6_Original, item)
            end
            gg.setValues(At6_Original)
            if #At6_Original > 0 then
                gg.removeListItems(At6_Original)
                gg.clearResults()
                gg.toast("❌ ปิดฟังชั่น ตีทะลุกำแพง แล้ว ❌")
            end
            At6_Enabled = false
        end
        At6 = "🔰 : "
    end
end 
        
local At7 = "🔰 : "
local At7_Original = {}
local At7_Enabled = false

function module.attack7()
    if At7 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1.40129846e-45F;0.0F;0.64999997616F;0.0F;1.0F:29", gg.TYPE_FLOAT)
        gg.refineNumber("0.64999997616", gg.TYPE_FLOAT)
        At7_Original = gg.getResults(300)
        
        gg.editAll("9.5", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น อมตะ แล้ว ✅")
        
        At7 = "⛔ : "
        At7_Enabled = true
    elseif At7 == "⛔ : " then
        if At7_Enabled then
            gg.clearResults()
            gg.setValues(At7_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น อมตะ แล้ว ❌")
            At7_Enabled = false
        end
        At7 = "🔰 : "
    end
end

        
local At8 = "🔰 : "
local At8_Original = {}
local At8_Enabled = false

function module.attack8()
    if At8 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("427281867D;5.0F:5",gg.TYPE_AUTO)
        gg.refineNumber("5", gg.TYPE_FLOAT)
        At8_Original = gg.getResults(200)
        
        gg.editAll("1", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ตีอันติ แล้ว ✅")
        
        At8 = "⛔ : "
        At8_Enabled = true
    elseif At8 == "⛔ : " then
        if At8_Enabled then
            gg.clearResults()        
            gg.setValues(At8_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น ตีอันติ แล้ว ❌")
            At8_Enabled = false
        end
        At8 = "🔰 : "
    end
end


local At9 = "🔰 : "
local At9_Original = {}
local At9_Enabled = false

function module.attack9()
    if At9 == "🔰 : " then
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.clearResults()
        gg.searchNumber("37;1;37:193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()
        gg.refineNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineAddress("9E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
        revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
        local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
        for i, v in ipairs(t) do
        	if v.flags == gg.TYPE_DWORD then
        		v.value = "-100"
        		v.freeze = true
        	end
        end
        gg.addListItems(t)
        t = nil
        gg.processResume()
        gg.clearResults()
        gg.clearList()
        gg.toast("✅ เปิดฟังชั่น ใบ้มอนสเตอร์ แล้ว ✅")
        
        At9 = "⛔ : "
        At9_Enabled = true
    elseif At9 == "⛔ : " then
        if At9_Enabled then
            gg.setRanges(gg.REGION_ANONYMOUS)
            gg.clearResults()
            gg.searchNumber("37;-100;37:193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.processResume()
            gg.refineNumber("-100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.refineAddress("9E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
            revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
            local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
            for i, v in ipairs(t) do
            	if v.flags == gg.TYPE_DWORD then
            		v.value = "1"
            		v.freeze = true
            	end
            end
            gg.addListItems(t)
            t = nil
            gg.processResume()
            gg.clearResults()
            gg.clearList()
            gg.toast("❌ ปิดฟังชั่น ใบ้มอนสเตอร์ แล้ว ❌")
            At9_Enabled = false
        end
        At9 = "🔰 : "
    end
end


function module.offFunAttack()
    if At1 == "⛔ : " and At1_Enabled then
        gg.setValues(At1_Original)
        if #At1_Original > 0 then
            gg.removeListItems(At1_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น ตีรัวๆ แล้ว ❌")
        end
        At1_Enabled = false
    end
    
    if At2 == "⛔ : " and At2_Enabled then
        gg.clearResults()
        gg.setValues(At2_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีเร็ว แล้ว ❌")
        At2_Enabled = false
    end
    
    if At3 == "⛔ : " and At3_Enabled then
        gg.clearResults()
        gg.setValues(At3_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีแบบกดค้างรัวๆ แล้ว ❌")
        At3_Enabled = false
    end
    
    if At4 == "⛔ : " and At4_Enabled then
        if At4_Original ~= nil then
            gg.setValues({{address = At4_RangesList, value = At4_Original, flags = gg.TYPE_FLOAT}})
        end
        gg.toast("❌ ปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ❌")
        At4_Enabled = false
    end
    
    if At5 == "⛔ : " and At5_Enabled then
        gg.clearResults()
        gg.setValues(At5_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ชาร์จยิงธนูรัวๆ แล้ว ❌")
        At5_Enabled = false
    end
    
    if At6 == "⛔ : " and At6_Enabled then
        local results = gg.getListItems()
        for i, item in ipairs(results) do
           table.insert(At6_Original, item)
        end
        gg.setValues(At6_Original)
        if #At6_Original > 0 then
            gg.removeListItems(At6_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น ตีทะลุกำแพง แล้ว ❌")
        end
        At6_Enabled = false
    end
    
    if At7 == "⛔ : " and At7_Enabled then
        gg.clearResults()
        gg.setValues(At7_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น อมตะ แล้ว ❌")
        At7_Enabled = false
    end
    
    if At8 == "⛔ : " and At8_Enabled then
        gg.clearResults()        
        gg.setValues(At8_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีอันติ แล้ว ❌")
        At8_Enabled = false
    end
    
    if At9 == "⛔ : " and At9_Enabled then
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.clearResults()
        gg.searchNumber("37;-100;37:193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()
        gg.refineNumber("-100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineAddress("9E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1, 0)
        revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
        local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
        for i, v in ipairs(t) do
        	if v.flags == gg.TYPE_DWORD then
        		v.value = "1"
        		v.freeze = true
        	end
        end
        gg.addListItems(t)
        t = nil
        gg.processResume()
        gg.clearResults()
        gg.clearList()
        gg.toast("❌ ปิดฟังชั่น ใบ้มอนสเตอร์ แล้ว ❌")
        At9_Enabled = false
    end
end

return module
