local module = {}

local Dan_Original = {}
local Dan_Original_1 = nil
local Dan1_RangesList = 0x7800CB4298
local Dan_Original_2 = {}

local DDun1 = "[ ⛔ ปิดอยู่ ]"

function module.Dun_GI()
    
    if DDun1 == "[ ⛔ ปิดอยู่ ]" then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(";ᷙ柱       㾀", gg.TYPE_WORD)
        gg.refineNumber("16256", gg.TYPE_WORD)
        Dan_Original = gg.getResults(8888)
        gg.editAll("16448", gg.TYPE_WORD)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น ตีเร็ว แล้ว ✅")
        
        ----------------------------------------------------------------------------
        
        gg.clearResults()
        gg.sleep(1000)
        gg.setRanges(gg.REGION_ANONYMOUS)
        if Dan_Original_1 == nil then
            Dan_Original_1 = gg.getValues({{address = Dan1_RangesList, flags = gg.TYPE_FLOAT}})[1].value
        end
        gg.setValues({{address = Dan1_RangesList, value = 10, flags = gg.TYPE_FLOAT}})
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น สกิลไม่มีคูดาวน์ แล้ว ✅")
        
        ----------------------------------------------------------------------------
        
        gg.clearResults()
        gg.sleep(1000)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1.40129846e-45F;0.0F;0.64999997616F;0.0F;1.0F:29", gg.TYPE_FLOAT)
        gg.refineNumber("0.64999997616", gg.TYPE_FLOAT)
        Dan_Original_2 = gg.getResults(300)
        
        gg.editAll("9.5", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("✅ เปิดฟังชั่น อมตะ แล้ว ✅")
        gg.sleep(1000)
        
        gg.toast("✅ เปิดฟังก์ชั่น ลงดัน แล้ว ✅")
        DDun1 = "[ ✅ เปิดอยู่ ]"
    
    elseif DDun1 == "[ ✅ เปิดอยู่ ]" then
        gg.setValues(Dan_Original)
        
        if Dan_Original_1 ~= nil then
            gg.setValues({{address = Dan1_RangesList, value = Dan_Original_1, flags = gg.TYPE_FLOAT}})
        end
        
        gg.setValues(Dan_Original_2)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น ลงดัน แล้ว ❌")
        DDun1 = "[ ⛔ ปิดอยู่ ]"
    end
end

function module.OffDun()
    if DDun1 == "[ ✅ เปิดอยู่ ]" then
        gg.setValues(Dan_Original)
        
        if Dan_Original_1 ~= nil then
            gg.setValues({{address = Dan1_RangesList, value = Dan_Original_1, flags = gg.TYPE_FLOAT}})
        end
        
        gg.setValues(Dan_Original_2)
        gg.clearResults()
        gg.toast("❌ ปิดฟังก์ชั่น ลงดัน แล้ว ❌")
        DDun1 = "[ ⛔ ปิดอยู่ ]"
    end
end


return module
