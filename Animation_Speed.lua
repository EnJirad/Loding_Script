local module = {}

local Skip1_Original = {}
local Skip1_New = {}
local searchedOnce = false
local Tos1 = "[ ⛔ ปิดอยู่ ]"

function module.ToggleSkip()
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

function module.OffSkip()
    if Tos1 == "[ ✅ เปิดอยู่ ]" then
        gg.setValues(Skip1_Original)
        gg.toast("❌ ปิดฟังก์ชั่น เร่งอนิเมชั่น แล้ว ❌")
        Tos1 = "[ ⛔ ปิดอยู่ ]"
    end
end


return module
