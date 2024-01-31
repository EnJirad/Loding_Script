local module = {}

local Hit1 = "🔰 : "
local Hit2 = "🔰 : "
local Hit3 = "🔰 : "

local De_Value = {}
local Hit1_Enabled = false

function hit1()
    if Hit1 == "🔰 : " then
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("-9183109157996199936Q;-2138109216D:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("-2138109216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

        local t = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.addListItems(t)
        t = nil
        
        local copy = false
        local t = gg.getListItems()
        if not copy then gg.removeListItems(t) end

        for i, v in ipairs(t) do
            v.address = v.address + 0x10
            if copy then v.name = v.name..' #2' end
        end
        
        gg.addListItems(t)
        Rever_Value = gg.getValues(t)
        De_Value = gg.getListItems(t)
        t = nil
        copy = nil

        gg.loadResults(gg.getListItems())
        local t = gg.getResults(100000)
        gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local revert = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("1,259,902,592", gg.TYPE_DWORD)
        
        gg.loadResults(gg.getListItems())
        local t = gg.getResults(100000)
        gg.refineNumber("1,065,353,216~1,148,846,080", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local revert = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("1,259,902,592", gg.TYPE_DWORD)
        
        gg.loadResults(gg.getListItems())
        local t = gg.getResults(100000)
        gg.refineNumber("0~1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local revert = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("1,259,902,592", gg.TYPE_DWORD)
        
        gg.loadResults(gg.getListItems())
        local t = gg.getResults(100000)
        gg.refineNumber("925,353,388~1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local revert = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("1,259,902,592", gg.TYPE_DWORD)
        
        gg.toast("✅ เปิด 1 Hit ตัวละครในทีม แล้ว ✅")
        gg.clearResults()
        gg.removeListItems(De_Value)
        
        Hit1 = "⛔ : "
        Hit1_Enabled = true
    elseif Hit1 == "⛔ : " then
        if Hit1_Enabled then
            gg.clearResults()
            gg.setValues(Rever_Value)
            gg.removeListItems(De_Value)
            gg.clearResults()
            gg.toast("❌ ปิด 1 Hit ตัวละครในทีม แล้ว ❌")
            Hit1_Enabled = false
        end
        Hit1 = "🔰 : "
    end
end

local UTM_Original = {}
local Hit2_Enabled = false

function hit2()
    if Hit2 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("427281867D;5.0F:5",gg.TYPE_AUTO)
        gg.refineNumber("5", gg.TYPE_FLOAT)
        UTM_Original = gg.getResults(200)
        gg.editAll("1", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ตีอันติ แล้ว ✅")
        
        Hit2 = "⛔ : "
        Hit2_Enabled = true
    elseif Hit2 == "⛔ : " then
        if Hit2_Enabled then
            gg.clearResults()
            gg.setValues(UTM_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น ตีอันติ แล้ว ❌")
            Hit2_Enabled = false
        end
        Hit2 = "🔰 : "
    end
end

local Hit3_RangesList = 0x7800CB4298
local Hit3_Original = nil
local Hit3_Enabled = false

function hit3()
    if Hit3 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        if Hit3_Original == nil then
            Hit3_Original = gg.getValues({{address = Hit3_RangesList, flags = gg.TYPE_FLOAT}})[1].value
        end
        
        gg.setValues({{address = Hit3_RangesList, value = 10, flags = gg.TYPE_FLOAT}})
        gg.toast("✅ เปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ✅")
        
        Hit3 = "⛔ : "
        Hit3_Enabled = true
    elseif Hit3 == "⛔ : " then
        if Hit3_Enabled then
            if Hit3_Original ~= nil then
                gg.setValues({{address = Hit3_RangesList, value = Hit3_Original, flags = gg.TYPE_FLOAT}})
            end
            gg.toast("❌ ปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ❌")
            Hit3_Enabled = false
        end
        Hit3 = "🔰 : "
    end
end

local function Tutorial_Caracteor()
    return
([[ ---------------------------------------
  หลังจากเปิดฟังก์ชั่นแล้วให้ทำการ
  กดใช้สกิลและตีธรรมดาของตัวละครแล้วจากนั้น
  ให้เอาตัวละครออกจากทีมแล้วเพิ่มเข้าไปใหม่
  
  Shenhe : ใช้ สกิล กด
  Gorou : ใช้ อันติ
  Amber : ใช้ อันติ
  Wanderer : ใช้ ตีธรรมดา และ กดสกิล
  Furina : กด อันติ แล้ว ให้สัตว์เลี้ยงตี
  Traveler : ตีธรรมดา
  HuTao : 
  Noelle : 
  Klee : ใช้กับ สกิล Passive คือกดค้าง
  Thoma : ใช้ อันติ แล้ว กดตีธรรมดา ไฟจะเผา
  Yunjin : กดใช้ ( อันติlvl >70 + สามารถแบ่งปันความเสียหายได้ )
  Qiqi : ใช ้อันติ
  Geolumin : 
  Etc : 
 ---------------------------------------   ]]) 
end

function hit4()
    gg.alert(Tutorial_Caracteor())
end

function module.offFunHit()
    if Hit1 == "⛔ : " and Hit1_Enabled then
        gg.clearResults()
        gg.setValues(Rever_Value)
        gg.removeListItems(De_Value)
        gg.clearResults()
        gg.toast("❌ ปิด 1 Hit ตัวละครในทีม แล้ว ❌")
        Hit1_Enabled = false
    end
        
    if Hit2 == "⛔ : " and Hit2_Enabled then
        gg.clearResults()
        gg.setValues(UTM_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีอันติ แล้ว ❌")
        Hit2_Enabled = false
    end
    
    if Hit3 == "⛔ : " and Hit3_Enabled then
        if Hit3_Original ~= nil then
            gg.setValues({{address = Hit3_RangesList, value = Hit3_Original, flags = gg.TYPE_FLOAT}})
        end
        gg.toast("❌ ปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ❌")
        Hit3_Enabled = false
    end
end

return module
