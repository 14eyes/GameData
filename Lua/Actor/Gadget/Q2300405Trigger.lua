require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2300405Trigger = class("Q2300405Trigger", GadgetActorProxy)
Q2300405Trigger.defaultAlias = "Q2300405Trigger"
local Q23004ClientConfig = require("Quest/Client/Q23004ClientConfig")

local subIDs = Q23004ClientConfig.SubIDs
local npcs = Q23004ClientConfig.Npcs
local datas = Q23004ClientConfig.Datas

function Q2300405Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2300405Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2300405Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23004"):NarratorOnlyTask(datas.NarratorTable02, nil, "")
    actorUtils.FinishQuestID(false, 2300414)
    self:DestroySelf()
end

function Q2300405Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2300405Trigger
