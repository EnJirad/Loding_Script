MENUXMR = 1
gg.setVisible(false)

gg.toast("┋▓░░░░░░░░░░░░░░┋")
gg.sleep(60)
gg.toast("┋▓▓░░░░░░░░░░░░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓░░░░░░░░░░░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓░░░░░░░░░░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓▓░░░░░░░░░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓▓▓░░░░░░░░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓▓▓▓░░░░░░░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓▓▓▓▓░░░░░░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓▓▓▓▓▓░░░░░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓▓▓▓▓▓▓░░░░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓▓▓▓▓▓▓▓░░░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓▓▓▓▓▓▓▓▓░░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓▓▓▓▓▓▓▓▓▓░░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓▓▓▓▓▓▓▓▓▓▓░┋")
gg.sleep(60)
gg.toast("┋▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓┋")
gg.sleep(500)
gg.toast("✅ Login : 🗺️ Genshin Impact 🌎")
gg.sleep(500)

local Skip1_Original = {}
local Skip1_New = {}
local isSkipOn = false
local searchedOnce = false

local Tos1 = "[ ⛔ ปิดอยู่ ]"

function Game_GI()
local function getMenuTitle()
return os.date
([[ ---------------------------------------
  🗺️ Genshin Impact 🌎
 ---------------------------------------   ]]) 
end

    local menu = gg.choice({
        "🗡️ การต่อสู้", --1
        "🍑 เปิดแมพ และ ฟาร์มของ", --2
        "🚝 เร่งอนิเมชั่น "..Tos1,--3
        "🪚 1 Hit", --4
        "🎸 ลงดัน ( เปลี่ยนห้องปิดทุกอย่าง แล้วเปิดใหม่ )", --5
        "🔕 ปิดทุกฟังก์ชั่น ที่เปิดอยู่", --6
        "❌ ปิดสคริปต์ ❌" --7
    }, nil, getMenuTitle())

    if menu == nil then
    else
        if menu == 1 then Attack_GI() end -- ฟังก์ชั่น Attack 
        if menu == 2 then Map_GI() end -- ฟังก์ชั่น Map
        if menu == 3 then ToggleSkip() end -- ฟังก์ชั่นข้ามอนิเมชั่น
        if menu == 4 then Hit() end -- ฟังก์ชั่น 1 Hit
        if menu == 5 then Dun_GI() end -- ฟังก์ชั่น ลงดัน
        if menu == 6 then offFun() end -- ฟังก์ชั่น ปิดทุกอย่าง
        if menu == 7 then ex() end -- ฟังก์ชั่น ปิดสคริปต์
    end
end

----------------------------------------------------------------------------------------------------------------------------------------------------
--เร่งอนิเมชั่น

function ToggleSkip()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)

    if not searchedOnce then
        gg.searchNumber("1.0F;0.09799999744F;0.03299999982F::9", gg.TYPE_FLOAT)
        gg.refineNumber("1", gg.TYPE_FLOAT)
        Skip1_Original = gg.getResults(999)
        gg.editAll("10", gg.TYPE_FLOAT)
        Skip1_New = gg.getResults(999)
        searchedOnce = true
    end
    
    if Tos1 == "[ ⛔ ปิดอยู่ ]" then
        gg.setValues(Skip1_New)
        gg.toast("✅ เปิดฟังก์ชั่น เร่งอนิเมชั่น แล้ว ✅")
        Tos1 = "[ ✅ เปิดอยู่ ]"
        
    elseif Tos1 == "[ ✅ เปิดอยู่ ]" then
        gg.setValues(Skip1_Original)
        gg.toast("❌ ปิดฟังก์ชั่น เร่งอนิเมชั่น แล้ว ❌")
        Tos1 = "[ ⛔ ปิดอยู่ ]"
    end
end


------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ฟังก์ชั่น Attack 

function Attack_GI()
    local menu = gg.multiChoice({
        At1.."⚔️ ❲ ตีรัวๆ - 🟢 ❳", --1
        At2.."🗡️ ❲ ตีเร็ว - 🟢 ❳", --2
        At3.."🛸 ❲ ตีแบบกดค้างเร็ว - 🟢 ❳", --3
        At4.."🪃 ❲ สกิลไม่มีคูดาวน์ - 🟢 ❳", --4
        At5.."🏹 ❲ ชาร์จยิงธนูรัวๆ - 🟢 ❳", --5
        At6.."🧱 ❲ ตีทะลุกำแพง - 🟢 ❳", --6
        At7.."🪦 ❲ อมตะ - 🟢 ❳", --7
        At8.."🪄 ❲ ตีอันติ - 🟢 ❳", --8
        At9.."🐣 ❲ ใบ้มอนสเตอร์ - 🟢 ❳", --9
        "↩️ ❲ กลับ ❳ ↩️" --9
    }, nil, "⟮ ⚔️ การต่อสู้ 🏹 ⟯")

    if menu == nil then 
    else
        if menu[1] == true then attack1() end
        if menu[2] == true then attack2() end
        if menu[3] == true then attack3() end
        if menu[4] == true then attack4() end
        if menu[5] == true then attack5() end
        if menu[6] == true then attack6() end
        if menu[7] == true then attack7() end
        if menu[8] == true then attack8() end
        if menu[9] == true then attack9() end
        if menu[10] == true then Game_GI() end
    end
end 

At1 = "🔰 : "
function attack1()
    if At1 == "🔰 : " then
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.clearResults()
        gg.searchNumber("-218184718", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        local Results = gg.getResults(1000)
        for i, v in ipairs(Results) do
            Results[i].freeze = true
            Results[i].value = -218184718
        end
        gg.addListItems(Results)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ตีรัวๆจนกว่าจะตาย แล้ว ✅")
        At1 = "⛔ : "
    elseif At1 == "⛔ : " then
        local results = gg.getListItems()
        local frozenValues = {}
        for i, item in ipairs(results) do
            if item.value == -218184718 and item.freeze then
                table.insert(frozenValues, item)
            end
        end
        gg.setValues(frozenValues)
        if #frozenValues > 0 then
            gg.removeListItems(frozenValues)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น ตีรัวๆจนกว่าจะตาย แล้ว ❌")
        end
        At1 = "🔰 : "
    end
end

At2 = "🔰 : "
local At2_Original = {}
function attack2()
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
    elseif At2 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        
        gg.setValues(At2_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีเร็ว แล้ว ❌")
        At2 = "🔰 : "
    end
end


At3 = "🔰 : "
local At3_Original = {}
function attack3()
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
    elseif At3 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
        
        gg.setValues(At3_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีแบบกดค้างรัวๆ แล้ว ❌")
        At3 = "🔰 : "
    end
end

At4 = "🔰 : "
local At4_Original = {}
function attack4()
    if At4 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("4715268810954768384Q;3~6F:73", gg.TYPE_FLOAT)
        gg.refineNumber("3~6", gg.TYPE_FLOAT)
        At4_Original = gg.getResults(1000)
        
        for i, v in ipairs(At4_Original) do
            At4_Original[i].freeze = true
        end
        gg.addListItems(At4_Original)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ✅")
        
        At4 = "⛔ : "
    elseif At4 == "⛔ : " then
        gg.clearResults()
        gg.clearList(At4_Original)
        gg.toast("❌ ปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ❌")
        At4 = "🔰 : "
    end
end

At5 = "🔰 : "
local At5_Original = {}
function attack5()
    if At5 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("1082977991", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
        At5_Original = gg.getResults(10)
        
        gg.editAll("1092977991", gg.TYPE_QWORD)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ชาร์จยิงธนูรัวๆ แล้ว ✅")
        
        At5 = "⛔ : "
    elseif At5 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.setValues(At5_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ชาร์จยิงธนูรัวๆ แล้ว ❌")
        At5 = "🔰 : "
    end
end

        
At6 = "🔰 : "
function attack6()
    if At6 == "🔰 : " then
        gg.setRanges(gg.REGION_C_ALLOC)
          gg.clearResults()
          gg.searchNumber('h 20 BC BE 4C FF FF 7F 7F', gg.TYPE_BYTE)
          gg.refineNumber('h 20', gg.TYPE_BYTE)
          local Results = gg.getResults(100)
          gg.clearResults()
          for i = 1, #Results do
            Results[i].address = Results[i].address - 0x28
            Results[i].value = '-1'
            Results[i].flags = gg.TYPE_FLOAT
            Results[i].freeze = true
          end
        gg.addListItems(Results)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ตีทะลุกำแพง แล้ว ✅")
        
        At6 = "⛔ : "
    elseif At6 == "⛔ : " then
        local results = gg.getListItems()
        local frozenValues = {}
        for i, item in ipairs(results) do
            if item.value == -1 and item.freeze then
                table.insert(frozenValues, item)
            end
        end
        gg.setValues(frozenValues)
        if #frozenValues > 0 then
            gg.removeListItems(frozenValues)
            gg.toast("❌ ปิดฟังชั่น ตีทะลุกำแพง แล้ว ❌")
        end
        
        At6 = "🔰 : "
    end
end 
        
At7 = "🔰 : "
local At7_Original = {}
function attack7()
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
    elseif At7 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        
        gg.setValues(At7_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น อมตะ แล้ว ❌")
        At7 = "🔰 : "
    end
end

        
At8 = "🔰 : "
local At8_Original = {}
function attack8()
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
    elseif At8 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        
        gg.setValues(At8_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีอันติ แล้ว ❌")
        At8 = "🔰 : "
    end
end


At9 = "🔰 : "
local At9_Original = {}
function attack9()
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
    elseif At9 == "⛔ : " then
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
        At9 = "🔰 : "
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ฟังก์ชั่น Map

function Map_GI()
    local menu = gg.multiChoice({
        Map1.."🎯 ❲ เร่งความเร็วเกม - 🟢 ❳", --5
        Map2.."🪃 ❲ พุ่งไกล - 🟢 ❳", --4
        Map3.."💻 ❲ มุมมอง กว้างขึ้น - 🟢 ❳", --6
        Map4.."🦿 ❲ กระโดดไกล - 🟢 ❳", --7
        Map5.."🛸 ❲ เก็บของระยะไกล - 🟢 ❳", --8
        Map6.."🚁 ❲ บินค้างและบินไว - 🟢 ❳", --13
        Map7.."☂️ ❲ ลอยขึ้น - 🟢 ❳", --14
        Map8.."⛰️ ❲ ปีนภูเขาไว - 🟢 ❳", --15
        "↩️ ❲ กลับ ❳ ↩️" --15
    }, nil, "⟮ 🎋 เปิดแมพ และฟาร์มของ 🍑 ⟯")

    if menu == nil then 
    else
        if menu[1] == true then map1() end
        if menu[2] == true then map2() end
        if menu[3] == true then map3() end
        if menu[4] == true then map4() end
        if menu[5] == true then map5() end
        if menu[6] == true then map6() end
        if menu[7] == true then map7() end
        if menu[8] == true then map8() end
        if menu[9] == true then Game_GI() end
    end
end

Map1 = "🔰 : "
local Map1_Original = {}
function map1()
    if Map1 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1.0F;0.09799999744F;0.03299999982F::9", gg.TYPE_FLOAT)
        gg.refineNumber("1", gg.TYPE_FLOAT)
        Map1_Original = gg.getResults(999)
        gg.editAll("2.6", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("✅ เปิดฟังก์ชั่น วิ่งเร็ว x3 แล้ว ✅")
        
        Map1 = "⛔ : "
  
    elseif Map1 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setValues(Map1_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น วิ่งเร็ว x3 แล้ว ❌")
        
        Map1 = "🔰 : "
    end
end

Map2 = "🔰 : "
local Map2_Original = {}
function map2()
    if Map2 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
        gg.searchNumber(";ꙵ芁潬\000\000\000\000\000\000\000㾀\000\000Ā\000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(";\000㾀", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        Map2_Original = gg.getResults(50)
        gg.editAll(";䃲", gg.TYPE_WORD)
        gg.clearResults()
        gg.toast("✅ เปิดฟังก์ชั่น พุ่งไกล แล้ว ✅")
        
        Map2 = "⛔ : "
        
    elseif Map2 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
        gg.setValues(Map2_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น พุ่งไกล แล้ว ❌")
        
        Map2 = "🔰 : "
    end
end

Map3 = "🔰 : "
local Map3_Original = {}
function map3()
    if Map3 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("0.30000001192;0.07999999821;6;8",gg.TYPE_FLOAT)
        gg.refineNumber("6", gg.TYPE_FLOAT)
        Map3_Original = gg.getResults(200)
        gg.editAll("15", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("✅ เปิดฟังก์ชั่น มุมมองกว้างขึ้น แล้ว ✅")
        
        Map3 = "⛔ : "
    elseif Map3 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.setValues(Map3_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น มุมมองกว้างขึ้น แล้ว ❌")
        
        Map3 = "🔰 : "
    end
end

Map4 = "🔰 : "
function map4()
    if Map4 == "🔰 : " then
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber('-1.0F;999,999.0F::21', gg.TYPE_FLOAT)
          gg.refineNumber('999,999.0', gg.TYPE_FLOAT)
          jumpTeleport = gg.getResults(20)
          gg.clearResults()
          for i = 1, #jumpTeleport do
            jumpTeleport[i].address = jumpTeleport[i].address - 0xC
            jumpTeleport[i].value = "8" 
            jumpTeleport[i].freeze = true 
          end
          
        gg.addListItems(jumpTeleport)
        gg.processResume()
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น กระโดดไกล แล้ว ✅")
        
        Map4 = "⛔ : "
    elseif Map4 == "⛔ : " then
        local results = gg.getListItems()
        local frozenValues = {}
        for i, item in ipairs(results) do
            if item.value == 8 and item.freeze then
                table.insert(frozenValues, item)
            end
        end
        gg.setValues(frozenValues)
        if #frozenValues > 0 then
            gg.removeListItems(frozenValues)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น กระโดดไกล แล้ว ❌")
        end
        Map4 = "🔰 : "
    end
end

Map5 = "🔰 : "
local Map5_Original = {}
function map5()
    if Map5 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("3.0F;0.0F;0.0F;2.0F;0.0F;0.0F::61", gg.TYPE_FLOAT)
        Map5_Original = gg.getResults(5000)
        gg.editAll("50", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น เก็บของระยะไกล แล้ว ✅")
        
        Map5 = "⛔ : "
    elseif Map5 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.setValues(Map5_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น เก็บของระยะไกล แล้ว ❌")
        
        Map5 = "🔰 : "
    end
end

Map6 = "🔰 : "
local Map6_Original = {}
local Map6_Original_1 = {}
function map6()
    if Map6 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("6.0;1.5:5", gg.TYPE_FLOAT)
        gg.refineNumber("6", gg.TYPE_FLOAT)
        Map6_Original = gg.getResults(500)
        gg.editAll("2000", gg.TYPE_FLOAT)
        gg.clearResults()
       
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.clearResults()
        gg.searchNumber("-1.89999997616;6.0:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("-1.89999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
        Map6_Original_1 = gg.getResults(1500)
        gg.editAll("0", gg.TYPE_FLOAT)

        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น บินค้างและบินไว แล้ว ✅")
        
        Map6 = "⛔ : "
    elseif Map6 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.setValues(Map6_Original)
        gg.setValues(Map6_Original_1)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น บินค้างและบินไว แล้ว ❌")
        
        Map6 = "🔰 : "
    end
end

Map7 = "🔰 : "
local Map7_Original = {}
function map7()
    if Map7 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("9.81000041962", gg.TYPE_FLOAT)
        Map7_Original = gg.getResults(5000)
        gg.editAll("-0.10000000149", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ลอยขึ้นเรื่อยๆ แล้ว ✅")
        
        Map7 = "⛔ : "
    elseif Map7 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.setValues(Map7_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ลอยขึ้นเรื่อยๆ แล้ว ❌")
        
        Map7 = "🔰 : "
    end
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end
function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end
function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.clearResults() gg.toast(qmnb[2]["name"]) else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.clearResults() gg.toast(qmnb[2]["name"]) else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.clearResults() gg.toast(qmnb[2]["name"]) else gg.clearResults() gg.toast(qmnb[2]["name"]) end end end end 
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.addListItems(t) else return false end else gg.toast("Not Found") return false end end
function setvalue(address,flags,value)
local t={}
t[1]={}
t[1].address=address
t[1].flags=flags
t[1].value=value
gg.setValues(t)
end

Map8 = "🔰 : "
function map8()
    if Map8 == "🔰 : " then
        qmnb = {
            {["memory"] = 4},
            {["name"] = " ✅ เปิดฟังชั่น ปีนภูเขาไว แล้ว ✅"},
            {["value"] = -509583744, ["type"] = 4},
            {["lv"] = 2248, ["offset"] = 64, ["type"] = 4}
        }
        qmxg = {
            {["value"] = 99, ["offset"] = 32, ["type"] = 16}
        }
        xqmnb(qmnb)
        
        Map8 = "⛔ : "
    elseif Map8 == "⛔ : " then
        qmnb = {
            {["memory"] = 4},
            {["name"] = " ❌ ปิดฟังชั่น ปีนภูเขาไว แล้ว ❌"},
            {["value"] = -509583744, ["type"] = 4},
            {["lv"] = 2248, ["offset"] = 64, ["type"] = 4}
        }
        qmxg = {
            {["value"] = 1, ["offset"] = 32, ["type"] = 16}
        }
        xqmnb(qmnb)
        Map8 = "🔰 : "
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ฟังก์ชั่น 1 Hit

local Hit1 = "🔰 : "
local Hit2 = "🔰 : "
local Hit3 = "🔰 : "

function Hit()
    local menu = gg.multiChoice({
        Hit1.."😸 ❲ 1 Hit ทุกตัวในทีม  ❳", --1
        Hit2.."🧸 ❲ กดตีอันติ❳", --2
        Hit3.."👹 ❲ สกิลไม่คูดาวน์ ❳", --3
        "🔮 ❲ วิธีใช้งาน แต่ละตัวละคร ❳", --4
        "↩️ ❲ กลับ ❳ ↩️" --15
    }, nil, "⟮ 💯 1 Hit ตัวละคร อ่านคู่มือการใช้งานก่อน 🔥 ⟯")

    if menu == nil then 
    else
        if menu[1] == true then hit1() end
        if menu[2] == true then hit2() end
        if menu[3] == true then hit3() end
        if menu[4] == true then hit4() end
        if menu[5] == true then Game_GI() end
    end
end

local De_Value = {}
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
        
        Hit1 = "⛔ : "
  
    elseif Hit1 == "⛔ : " then
        gg.setValues(Rever_Value)
        gg.removeListItems(De_Value)
        gg.clearResults()
        gg.toast("❌ ปิด 1 Hit ตัวละครในทีม แล้ว ❌")
        
        Hit1 = "🔰 : "
    end
end

local UTM_Original = {}
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
  
    elseif Hit2 == "⛔ : " then
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setValues(UTM_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีอันติ แล้ว ❌")
        
        Hit2 = "🔰 : "
    end
end

local Hit3_Original = {}
function hit3()
    if Hit3 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("4715268810954768384Q;3~6F:73", gg.TYPE_FLOAT)
        gg.refineNumber("3~6", gg.TYPE_FLOAT)
        Hit3_Original = gg.getResults(1000)
        
        for i, v in ipairs(Hit3_Original) do
            Hit3_Original[i].freeze = true
        end
        gg.addListItems(Hit3_Original)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ✅")
        
        Hit3 = "⛔ : "
    elseif Hit3 == "⛔ : " then
        local results = gg.getListItems()
        for i, item in ipairs(results) do
            if item.freeze then
                table.insert(Hit3_Original, item)
            end
        end
        gg.setValues(Hit3_Original)
        if #Hit3_Original > 0 then
            gg.removeListItems(Hit3_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ❌")
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



------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ฟังก์ชั่น ปิดทุกอย่าง

function offFun()

    -- ปิดในส่วนของ ฟังก์ชั่น Attack
    
    if At1 == "⛔ : " then
        local results = gg.getListItems()
        local frozenValues = {}
        for i, item in ipairs(results) do
            if item.value == -218184718 and item.freeze then
                table.insert(frozenValues, item)
            end
        end
        gg.setValues(frozenValues)
        if #frozenValues > 0 then
            gg.removeListItems(frozenValues)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น ตีรัวๆจนกว่าจะตาย แล้ว ❌")
        end
        At1 = "🔰 : "
    end
    
    if At2 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setValues(At2_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีเร็ว แล้ว ❌")
        At2 = "🔰 : "
    end
    
    if At3 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
        gg.setValues(At3_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีแบบกดค้างรัวๆ แล้ว ❌")
        At3 = "🔰 : "
    end
    
    if At4 == "⛔ : " then
        gg.clearResults()
        gg.clearList(At4_Original)
        gg.toast("❌ ปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ❌")
        At4 = "🔰 : "
    end
    
    if At5 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.setValues(At5_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ชาร์จยิงธนูรัวๆ แล้ว ❌")
        At5 = "🔰 : "
    end
    
    if At6 == "⛔ : " then
        local results = gg.getListItems()
        local frozenValues = {}
        for i, item in ipairs(results) do
            if item.value == -1 and item.freeze then
                table.insert(frozenValues, item)
            end
        end
        gg.setValues(frozenValues)
        if #frozenValues > 0 then
            gg.removeListItems(frozenValues)
            gg.toast("❌ ปิดฟังชั่น ตีทะลุกำแพง แล้ว ❌")
        end
        At6 = "🔰 : "
    end
    
    if At7 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.setValues(At5_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น อมตะ แล้ว ❌")
        At7 = "🔰 : "
    end
    
    if At8 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setValues(At8_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีอันติ แล้ว ❌")
        At8 = "🔰 : "
    end
    
    if At9 == "⛔ : " then
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
        At9 = "🔰 : "
    end
    
------------------------------------------------------------------------------------------------------------------------------------------------------------------

    -- ปิดในส่วนของ ฟังก์ชั่น Map
    
    if Map1 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setValues(Map1_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น วิ่งเร็ว x3 แล้ว ❌")
        Map1 = "🔰 : "
    end

    if Map2 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
        gg.setValues(Map2_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น พุ่งไกล แล้ว ❌")
        Map2 = "🔰 : "
    end

    if Map3 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.setValues(Map3_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น มุมมองกว้างขึ้น แล้ว ❌")
        Map3 = "🔰 : "
    end
    
    if Map4 == "⛔ : " then
        local results = gg.getListItems()
        local frozenValues = {}
        for i, item in ipairs(results) do
            if item.value == 8 and item.freeze then
                table.insert(frozenValues, item)
            end
        end
        gg.setValues(frozenValues)
        if #frozenValues > 0 then
            gg.removeListItems(frozenValues)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น กระโดดไกล แล้ว ❌")
        end
        Map4 = "🔰 : "
    end

    if Map5 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.setValues(Map5_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น เก็บของระยะไกล แล้ว ❌")
        Map5 = "🔰 : "
    end

    if Map6 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.setValues(Map6_Original)
        gg.setValues(Map6_Original_1)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น บินค้างและบินไว แล้ว ❌")
        Map6 = "🔰 : "
    end
    
    if Map7 == "⛔ : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.setValues(Map7_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น ลอยขึ้นเรื่อยๆ แล้ว ❌")
        Map7 = "🔰 : "
    end
    
    if Map8 == "⛔ : " then
        qmnb = {
                {["memory"] = 4},
                {["name"] = " ❌ ปิดฟังชั่น ปีนภูเขาไว แล้ว ❌"},
                {["value"] = -509583744, ["type"] = 4},
                {["lv"] = 2248, ["offset"] = 64, ["type"] = 4}
            }
            qmxg = {
                {["value"] = 1, ["offset"] = 32, ["type"] = 16}
            }
            xqmnb(qmnb)
        Map8 = "🔰 : "
    end
    
    -- เร่งอนิเมชั่น
    
    if Tos1 == "[ ✅ เปิดอยู่ ]" then
        gg.setValues(Skip1_Original)
        gg.toast("❌ ปิดฟังก์ชั่น เร่งอนิเมชั่น แล้ว ❌")
        Tos1 = "[ ⛔ ปิดอยู่ ]"
    end
    
    -- 1Hit ตัวละคร
    
    if Hit1 == "⛔ : " then
        gg.setValues(Rever_Value)
        gg.removeListItems(De_Value)
        gg.clearResults()
        gg.toast("❌ ปิด 1 Hit ตัวละครในทีม แล้ว ❌")
        
        Hit1 = "🔰 : "
    end
    
    if Hit2 == "⛔ : " then
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setValues(UTM_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ตีอันติ แล้ว ❌")
        
        Hit2 = "🔰 : "
    end
    
    if Hit3 == "⛔ : " then
        local results = gg.getListItems()
        for i, item in ipairs(results) do
            if item.freeze then
                table.insert(Hit3_Original, item)
            end
        end
        gg.setValues(Hit3_Original)
        if #Hit3_Original > 0 then
            gg.removeListItems(Hit3_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ❌")
        end
        
        Hit3 = "🔰 : "
    end
end

-------------------------------------------------------------------------------------
local UPDATE_SCRIPT = [[
🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸
============================
สร้างโดย : XTers
Game : Genshin Impact
Update :14/1/2567
============================
🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸]]
-------------------------------------------------------------------------------------

function ex()
    offFun()
    print(UPDATE_SCRIPT)
    gg.setVisible(true)
    os.exit()
end

while true do
    if gg.isVisible(true) then
       MENUXMR = 1
       gg.setVisible(false)
    end
    if MENUXMR == 1 then
           Game_GI()
        end
    MENUXMR = -1
end
