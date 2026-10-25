require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Area_B_Enter = class("Area_B_Enter", GadgetActorProxy)
Area_B_Enter.defaultAlias = "Area_B_Enter"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function Area_B_Enter:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Area_B_Enter:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Area_B_Enter:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
    actorMgr:GetActor("72166"):CallDelay(5, function(arg1)
        actorMgr:GetActor("72166"):FinishQuestID(false, 7216611)
    end)
end

function Area_B_Enter:TriggerOut()
    print("TriggerOut")
end

return Area_B_Enter
