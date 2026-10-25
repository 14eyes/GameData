require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Area_A_Enter = class("Area_A_Enter", GadgetActorProxy)
Area_A_Enter.defaultAlias = "Area_A_Enter"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function Area_A_Enter:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Area_A_Enter:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Area_A_Enter:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
    actorMgr:GetActor("72166"):CallDelay(4, function(arg1)
        actorMgr:GetActor("72166"):FinishQuestID(false, 7216608)
    end)
end

function Area_A_Enter:TriggerOut()
    print("TriggerOut")
end

return Area_A_Enter
