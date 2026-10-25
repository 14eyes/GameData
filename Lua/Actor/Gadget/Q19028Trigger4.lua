require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19028Trigger4 = class("Q19028Trigger4", GadgetActorProxy)
Q19028Trigger4.defaultAlias = "Q19028Trigger4"
local Q19028ClientConfig = require("Quest/Client/Q19028ClientConfig")

local subIDs = Q19028ClientConfig.SubIDs
local npcs = Q19028ClientConfig.Npcs
local datas = Q19028ClientConfig.Datas

function Q19028Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19028Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19028Trigger4:TriggerIn()
    print("TriggerIn")
end

function Q19028Trigger4:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("19028"):FinishQuestID(true, 1902899)
    self:DestroySelf()
end

return Q19028Trigger4
