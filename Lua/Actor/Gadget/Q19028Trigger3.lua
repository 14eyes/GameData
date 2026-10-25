require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19028Trigger3 = class("Q19028Trigger3", GadgetActorProxy)
Q19028Trigger3.defaultAlias = "Q19028Trigger3"
local Q19028ClientConfig = require("Quest/Client/Q19028ClientConfig")

local subIDs = Q19028ClientConfig.SubIDs
local npcs = Q19028ClientConfig.Npcs
local datas = Q19028ClientConfig.Datas

function Q19028Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19028Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19028Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19028"):FinishQuestID(false, 1902802)
    self:DestroySelf()
end

function Q19028Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19028Trigger3
