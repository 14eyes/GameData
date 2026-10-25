require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005112Trigger = class("Q4005112Trigger", GadgetActorProxy)
Q4005112Trigger.defaultAlias = "Q4005112Trigger"
local Q40051ClientConfig = require("Quest/Client/Q40051ClientConfig")

local subIDs = Q40051ClientConfig.SubIDs
local npcs = Q40051ClientConfig.Npcs
local datas = Q40051ClientConfig.Datas

function Q4005112Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005112Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(43.46, DistType.EULER, {x = 0, y = 30, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005112Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40051"):FinishQuestID(false, 4005112)
    self:DestroySelf()
end

function Q4005112Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005112Trigger
