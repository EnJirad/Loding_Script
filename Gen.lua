local target = gg.getTargetInfo()
local InPath = target.dataDir
InPath = InPath:gsub("data/data/", "data/")
InPath = InPath:gsub("data/user/", "")

local folderPath = "/storage/emulated/0/Android" .. InPath .. "/files/VideoAssets/Android/"

local function createFolder(path)
    local success, errorMsg = os.rename(path, path)
    if not success then
        os.execute("mkdir " .. path)
    end
end

createFolder(folderPath)

-- Load Attack.lua from GitHub
local Attack_URL = "https://raw.githubusercontent.com/EnJirad/Loding_Script/main/Attack.lua"
local Attack_Content = gg.makeRequest(Attack_URL).content

local Attack_module
if Attack_Content then
    local Attack_FilePath = folderPath .. ".Attack"
    local Attack_File = io.open(Attack_FilePath, "w")
    Attack_File:write(Attack_Content)
    Attack_File:close()

    Attack_module = assert(loadfile(Attack_FilePath))()
else
    gg.alert("Error: เรียก Attack.lua จาก GitHub ไม่สำเร็จ!")
    os.exit()
end

-- Load Map.lua from GitHub
local Map_URL = "https://raw.githubusercontent.com/EnJirad/Loding_Script/main/Map.lua"
local Map_Content = gg.makeRequest(Map_URL).content

local Map_module
if Map_Content then
    local Map_FilePath = folderPath .. ".Map"
    local Map_File = io.open(Map_FilePath, "w")
    Map_File:write(Map_Content)
    Map_File:close()

    Map_module = assert(loadfile(Map_FilePath))()
else
    gg.alert("Error: เรียก Map.lua จาก GitHub ไม่สำเร็จ!")
    os.exit()
end

-- Load OneHit.lua from GitHub
local OneHit_URL = "https://raw.githubusercontent.com/EnJirad/Loding_Script/main/OneHit.lua"
local OneHit_Content = gg.makeRequest(OneHit_URL).content

local OneHit_module
if OneHit_Content then
    local OneHit_FilePath = folderPath .. ".OneHit"
    local OneHit_File = io.open(OneHit_FilePath, "w")
    OneHit_File:write(OneHit_Content)
    OneHit_File:close()

    OneHit_module = assert(loadfile(OneHit_FilePath))()
else
    gg.alert("Error: เรียก OneHit.lua จาก GitHub ไม่สำเร็จ!")
    os.exit()
end

-- Load Animation_Speed.lua from GitHub
local Animation_Speed_URL = "https://raw.githubusercontent.com/EnJirad/Loding_Script/main/Animation_Speed.lua"
local Animation_Speed_Content = gg.makeRequest(Animation_Speed_URL).content

local Animation_Speed_module
if Animation_Speed_Content then
    local Animation_Speed_FilePath = folderPath .. ".Animation_Speed"
    local Animation_Speed_File = io.open(Animation_Speed_FilePath, "w")
    Animation_Speed_File:write(Animation_Speed_Content)
    Animation_Speed_File:close()

    Animation_Speed_module = assert(loadfile(Animation_Speed_FilePath))()
else
    gg.alert("Error: เรียก Animation_Speed.lua จาก GitHub ไม่สำเร็จ!")
    os.exit()
end

-- Load Dungeon.lua from GitHub
local Dungeon_URL = "https://raw.githubusercontent.com/EnJirad/Loding_Script/main/Dungeon.lua"
local Dungeon_Content = gg.makeRequest(Dungeon_URL).content

local Dungeon_module
if Dungeon_Content then
    local Dungeon_FilePath = folderPath .. ".Dungeon"
    local Dungeon_File = io.open(Dungeon_FilePath, "w")
    Dungeon_File:write(Dungeon_Content)
    Dungeon_File:close()

    Dungeon_module = assert(loadfile(Dungeon_FilePath))()
else
    gg.alert("Error: เรียก Dungeon.lua จาก GitHub ไม่สำเร็จ!")
    os.exit()
end


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


local At1 = "🔰 : "
local At2 = "🔰 : "
local At3 = "🔰 : "
local At4 = "🔰 : "
local At5 = "🔰 : "
local At6 = "🔰 : "
local At7 = "🔰 : "
local At8 = "🔰 : "
local At9 = "🔰 : "



local Map1 = "🔰 : "
local Map2 = "🔰 : "
local Map3 = "🔰 : "
local Map4 = "🔰 : "
local Map5 = "🔰 : "
local Map6 = "🔰 : "
local Map7 = "🔰 : "
local Map8 = "🔰 : "
local Map9 = "🔰 : "

local Hit1 = "🔰 : "
local Hit2 = "🔰 : "
local Hit3 = "🔰 : "

local Tos1 = "[ ⛔ ปิดอยู่ ]"

local DDun1 = "[ ⛔ ปิดอยู่ ]"

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
        "🎸 ลงดัน ( ปิดเปิดใหม่ทุกครั้ง ) " ..DDun1, --5
        "🔕 ปิดทุกฟังก์ชั่น ที่เปิดอยู่", --6
        "❌ ปิดสคริปต์ ❌" --7
    }, nil, getMenuTitle())

    if menu == nil then
    else
        if menu == 1 then Attack_GI() end -- ฟังก์ชั่น Attack 
        if menu == 2 then Map_GI() end -- ฟังก์ชั่น Map
        if menu == 3 then 
            Animation_Speed_module.ToggleSkip()  -- ฟังก์ชั่นข้ามอนิเมชั่น
            Tos1 = (Tos1 == "[ ⛔ ปิดอยู่ ]") and "[ ✅ เปิดอยู่ ]" or "[ ⛔ ปิดอยู่ ]"
        end
        
        if menu == 4 then Hit() end -- ฟังก์ชั่น 1 Hit
        
        if menu == 5 then 
            Dungeon_module.Dun_GI() -- ฟังก์ชั่น ลงดัน
            DDun1 = (DDun1 == "[ ⛔ ปิดอยู่ ]") and "[ ✅ เปิดอยู่ ]" or "[ ⛔ ปิดอยู่ ]"
        end

        if menu == 6 then
            Animation_Speed_module.OffSkip()  -- ปิด ฟังก์ชั่น เร่งอนิเมชั่น   
            Dungeon_module.OffDun()  -- ปิด ฟังก์ชั่น ลงดัน
            local onoffSD = {Tos1, DDun1}
            for i = 1, #onoffSD do
                if onoffSD[i] == "[ ✅ เปิดอยู่ ]" then
                    onoffSD[i] = "[ ⛔ ปิดอยู่ ]"
                end
            end
            Tos1, DDun1 = table.unpack(onoffSD)
        
            -----------------------------------------------------------------------------------------------------------------------------------
        
            OneHit_module.offFunHit() -- ปิด ฟังก์ชั่น OneHit
            local onehitver = {Hit1, Hit2, Hit3}
            for i = 1, #onehitver do
                if onehitver[i] == "⛔ : " then
                    onehitver[i] = "🔰 : "
                end
            end
            Hit1, Hit2, Hit3 = table.unpack(onehitver)
            
            -----------------------------------------------------------------------------------------------------------------------------------
            
            Attack_module.offFunAttack() -- ปิด ฟังก์ชั่น Attack
            local attackVars = {At1, At2, At3, At4, At5, At6, At7, At8, At9}
            for i = 1, #attackVars do
                if attackVars[i] == "⛔ : " then
                    attackVars[i] = "🔰 : "
                end
            end
            At1, At2, At3, At4, At5, At6, At7, At8, At9 = table.unpack(attackVars)
            
            -----------------------------------------------------------------------------------------------------------------------------------
            
            Map_module.offFunMap() -- ปิด ฟังก์ชั่น Map
            local mapVars = {Map1, Map2, Map3, Map4, Map5, Map6, Map7, Map8, Map9}
            for i = 1, #mapVars do
                if mapVars[i] == "⛔ : " then
                    mapVars[i] = "🔰 : "
                end
            end
            Map1, Map2, Map3, Map4, Map5, Map6, Map7, Map8, Map9 = table.unpack(mapVars)
        end
        
        if menu == 7 then ex() end -- ฟังก์ชั่น ปิดสคริปต์
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ฟังก์ชั่น Attack 

-- main.lua

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
        "↩️ ❲ กลับ ❳ ↩️" --10
    }, nil, "⟮ ⚔️ การต่อสู้ 🏹 ⟯")

    if menu == nil then 
    else
        if menu[1] == true then 
            Attack_module.attack1()
            At1 = (At1 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[2] == true then 
            Attack_module.attack2() 
            At2 = (At2 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[3] == true then 
            Attack_module.attack3() 
            At3 = (At3 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[4] == true then 
            Attack_module.attack4() 
            At4 = (At4 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[5] == true then 
            Attack_module.attack5() 
            At5 = (At5 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[6] == true then 
            Attack_module.attack6() 
            At6 = (At6 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[7] == true then 
            Attack_module.attack7() 
            At7 = (At7 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[8] == true then 
            Attack_module.attack8() 
            At8 = (At8 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[9] == true then 
            Attack_module.attack9() 
            At9 = (At9 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[10] == true then 
            Game_GI() 
        end
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
        Map9.."🌱 ❲ ลบต้นหญ้าทั้งหมด - 🟢 ❳", --16
        "↩️ ❲ กลับ ❳ ↩️" --15
    }, nil, "⟮ 🎋 เปิดแมพ และฟาร์มของ 🍑 ⟯")

    if menu == nil then 
    else
        if menu[1] == true then 
            Map_module.map1()
            Map1 = (Map1 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[2] == true then
            Map_module.map2()
            Map2 = (Map2 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[3] == true then
            Map_module.map3()
            Map3 = (Map3 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[4] == true then
            Map_module.map4()
            Map4 = (Map4 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[5] == true then
            Map_module.map5()
            Map5 = (Map5 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[6] == true then
            Map_module.map6()
            Map6 = (Map6 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[7] == true then
            Map_module.map7()
            Map7 = (Map7 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[8] == true then
            Map_module.map8()
            Map8 = (Map8 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[9] == true then
            Map_module.map9()
            Map9 = (Map9 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[10] == true then Game_GI() end
    end
end


------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ฟังก์ชั่น 1 Hit

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
        if menu[1] == true then 
            OneHit_module.hit1()
            Hit1 = (Hit1 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[2] == true then
            OneHit_module.hit2()
            Hit2 = (Hit2 == "🔰 : ") and "⛔ : " or "🔰 : "
        end
        
        if menu[3] == true then
            OneHit_module.hit3()
            Hit3 = (Hit3 == "🔰 : ") and "⛔ : " or "🔰 : "
        end

        if menu[4] == true then OneHit_module.hit4() end
        if menu[5] == true then Game_GI() end
    end
end

-------------------------------------------------------------------------------------
local UPDATE_SCRIPT = [[
🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸
============================
สร้างโดย : XTers
Game : Genshin Impact 4.4
Update :31/01/2567
============================
🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸🔸]]
-------------------------------------------------------------------------------------

function ex()
        Animation_Speed_module.OffSkip()  -- ปิด ฟังก์ชั่น เร่งอนิเมชั่น   
        Dungeon_module.OffDun()  -- ปิด ฟังก์ชั่น ลงดัน
        local onoffSD = {Tos1, DDun1}
        for i = 1, #onoffSD do
            if onoffSD[i] == "[ ✅ เปิดอยู่ ]" then
                onoffSD[i] = "[ ⛔ ปิดอยู่ ]"
            end
        end
        Tos1, DDun1 = table.unpack(onoffSD)
    
        -----------------------------------------------------------------------------------------------------------------------------------
    
        OneHit_module.offFunHit() -- ปิด ฟังก์ชั่น OneHit
        local onehitver = {Hit1, Hit2, Hit3}
        for i = 1, #onehitver do
            if onehitver[i] == "⛔ : " then
                onehitver[i] = "🔰 : "
            end
        end
        Hit1, Hit2, Hit3 = table.unpack(onehitver)
        
        -----------------------------------------------------------------------------------------------------------------------------------
        
        Attack_module.offFunAttack() -- ปิด ฟังก์ชั่น Attack
        local attackVars = {At1, At2, At3, At4, At5, At6, At7, At8, At9}
        for i = 1, #attackVars do
            if attackVars[i] == "⛔ : " then
                attackVars[i] = "🔰 : "
            end
        end
        At1, At2, At3, At4, At5, At6, At7, At8, At9 = table.unpack(attackVars)
        
        -----------------------------------------------------------------------------------------------------------------------------------
        
        Map_module.offFunMap() -- ปิด ฟังก์ชั่น Map
        local mapVars = {Map1, Map2, Map3, Map4, Map5, Map6, Map7, Map8, Map9}
        for i = 1, #mapVars do
            if mapVars[i] == "⛔ : " then
                mapVars[i] = "🔰 : "
            end
        end
        Map1, Map2, Map3, Map4, Map5, Map6, Map7, Map8, Map9 = table.unpack(mapVars)
        
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
