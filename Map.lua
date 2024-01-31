-- Map
local module = {}

local Map1 = "🔰 : "
local Map1_Original = {}
local Map1_Enabled = false

function module.map1()
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
        Map1_Enabled = true
    elseif Map1 == "⛔ : " then
        if Map1_Enabled then
            gg.clearResults()
            gg.setValues(Map1_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังก์ชั่น วิ่งเร็ว x3 แล้ว ❌")
            Map1_Enabled = false
        end
        Map1 = "🔰 : "
    end
end

local Map2 = "🔰 : "
local Map2_Original = {}
local Map2_Enabled = false

function module.map2()
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
        Map2_Enabled = true
    elseif Map2 == "⛔ : " then
        if Map2_Enabled then
            gg.clearResults()
            gg.setValues(Map2_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังก์ชั่น พุ่งไกล แล้ว ❌")
            Map2_Enabled = false
        end
        Map2 = "🔰 : "
    end
end

local Map3 = "🔰 : "
local Map3_Original = {}
local Map3_Enabled = false

function module.map3()
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
        Map3_Enabled = true
    elseif Map3 == "⛔ : " then
        if Map3_Enabled then
            gg.clearResults()
            gg.setValues(Map3_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังก์ชั่น มุมมองกว้างขึ้น แล้ว ❌")
            Map3_Enabled = false
        end
        Map3 = "🔰 : "
    end
end

local Map4 = "🔰 : "
local Map4_Original = {}
local Map4_Enabled = false

function module.map4()
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
        Map4_Enabled = true
    elseif Map4 == "⛔ : " then
        if Map4_Enabled then
            local results = gg.getListItems()
            for i, item in ipairs(results) do
               table.insert(Map4_Original, item)
            end
            gg.setValues(Map4_Original)
            if #Map4_Original > 0 then
                gg.removeListItems(Map4_Original)
                gg.clearResults()
                gg.toast("❌ ปิดฟังชั่น กระโดดไกล แล้ว ❌")
            end
            Map4_Enabled = false
        end
        Map4 = "🔰 : "
    end
end

local Map5 = "🔰 : "
local Map5_Original = {}
local Map5_Enabled = false

function module.map5()
    if Map5 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("3.0F;0.0F;0.0F;2.0F;0.0F;0.0F::61", gg.TYPE_FLOAT)
        Map5_Original = gg.getResults(5000)
        gg.editAll("50", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น เก็บของระยะไกล แล้ว ✅")
        
        Map5 = "⛔ : "
        Map5_Enabled = true
    elseif Map5 == "⛔ : " then
        if Map5_Enabled then
            gg.clearResults()
            gg.setValues(Map5_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น เก็บของระยะไกล แล้ว ❌")
            Map5_Enabled = false
        end
        Map5 = "🔰 : "
    end
end

local Map6 = "🔰 : "
local Map6_Original = {}
local Map6_Original_1 = {}
local Map6_Enabled = false

function module.map6()
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
        Map6_Enabled = true
    elseif Map6 == "⛔ : " then
        if Map6_Enabled then
            gg.clearResults()
            gg.setValues(Map6_Original)
            gg.setValues(Map6_Original_1)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น บินค้างและบินไว แล้ว ❌")
            Map6_Enabled = false
        end
        Map6 = "🔰 : "
    end
end

local Map7 = "🔰 : "
local Map7_Original = {}
local Map7_Enabled = false

function module.map7()
    if Map7 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("9.81000041962", gg.TYPE_FLOAT)
        Map7_Original = gg.getResults(5000)
        gg.editAll("-0.10000000149", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ลอยขึ้นเรื่อยๆ แล้ว ✅")
        
        Map7 = "⛔ : "
        Map7_Enabled = true
    elseif Map7 == "⛔ : " then
        if Map7_Enabled then
            gg.clearResults()
            gg.setValues(Map7_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น ลอยขึ้นเรื่อยๆ แล้ว ❌")
            Map7_Enabled = false
        end
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

local Map8 = "🔰 : "
local Map8_Enabled = false

function module.map8()
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
        Map8_Enabled = true
    elseif Map8 == "⛔ : " then
        if Map8_Enabled then
            qmnb = {
                {["memory"] = 4},
                {["name"] = " ❌ ปิดฟังชั่น ปีนภูเขาไว แล้ว ❌"},
                {["value"] = -509583744, ["type"] = 4},
                {["lv"] = 2248, ["offset"] = 64, ["type"] = 4}
            }
            
            if gg.getResultsCount() == 0 then
                gg.alert("ไม่พบค่าใดๆ กรุณาลองใหม่อีกครั้ง")
                return
            end

            qmxg = {
                {["value"] = 1, ["offset"] = 32, ["type"] = 16}
            }
            xqmnb(qmnb)
            Map8_Enabled = false
        end
        Map8 = "🔰 : "
    end
end


local Map9 = "🔰 : "
local Map9_Original = {}
local Map9_Enabled = false

function module.map9()
    if Map9 == "🔰 : " then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("3.14159274101F;0.80000001192F;1.0F;0.69999998808F;1.29999995232F;-0.10000000149F;0.10000000149F;0.10000000149F:33", gg.TYPE_FLOAT)
        Map9_Original = gg.getResults(5000)
        gg.editAll("0", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ลบหญ้าทั้งหมด แล้ว ✅")
        
        Map9 = "⛔ : "
        Map9_Enabled = true
    elseif Map9 == "⛔ : " then
        if Map9_Enabled then
            gg.clearResults()
            gg.setValues(Map9_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น ลบหญ้าทั้งหมด แล้ว ❌")
            Map9_Enabled = false
        end
        Map9 = "🔰 : "
    end
end


function module.offFunMap()
    if Map1 == "⛔ : " and Map1_Enabled then
        gg.clearResults()
        gg.setValues(Map1_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น วิ่งเร็ว x3 แล้ว ❌")
        Map1_Enabled = false
    end

    if Map2 == "⛔ : " and Map2_Enabled then
        gg.clearResults()
        gg.setValues(Map2_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น พุ่งไกล แล้ว ❌")
        Map2_Enabled = false
    end

    if Map3 == "⛔ : " and Map3_Enabled then
        gg.clearResults()
        gg.setValues(Map3_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น มุมมองกว้างขึ้น แล้ว ❌")
        Map3_Enabled = false
    end
    
    if Map4 == "⛔ : " and Map4_Enabled then
        local results = gg.getListItems()
        for i, item in ipairs(results) do
           table.insert(Map4_Original, item)
        end
        gg.setValues(Map4_Original)
        if #Map4_Original > 0 then
            gg.removeListItems(Map4_Original)
            gg.clearResults()
            gg.toast("❌ ปิดฟังชั่น กระโดดไกล แล้ว ❌")
        end
        Map4_Enabled = false
    end

    if Map5 == "⛔ : " and Map5_Enabled then
        gg.clearResults()
        gg.setValues(Map5_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น เก็บของระยะไกล แล้ว ❌")
        Map5_Enabled = false
    end

    if Map6 == "⛔ : " and Map6_Enabled then
        gg.clearResults()
        gg.setValues(Map6_Original)
        gg.setValues(Map6_Original_1)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น บินค้างและบินไว แล้ว ❌")
        Map6_Enabled = false
    end
    
    if Map7 == "⛔ : " and Map7_Enabled then
        gg.clearResults()
        gg.setValues(Map7_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ลอยขึ้นเรื่อยๆ แล้ว ❌")
        Map7_Enabled = false
    end
    
    if Map8 == "⛔ : " and Map8_Enabled then
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
        Map8_Enabled = false
    end
    
    if Map9 == "⛔ : " and Map9_Enabled then
        gg.clearResults()
        gg.setValues(Map9_Original)
        gg.clearResults()
        gg.toast("❌ ปิดฟังชั่น ลบหญ้าทั้งหมด แล้ว ❌")
        Map9_Enabled = false
    end
end


return module
