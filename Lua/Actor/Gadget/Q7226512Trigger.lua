require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226512Trigger = class("Q7226512Trigger", GadgetActorProxy)
Q7226512Trigger.defaultAlias = "Q7226512Trigger"
local Q72265ClientConfig = require("Quest/Client/Q72265ClientConfig")

local subIDs = Q72265ClientConfig.SubIDs
local npcs = Q72265ClientConfig.Npcs
local datas = Q72265ClientConfig.Datas

function Q7226512Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226512Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226512Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72265"):FinishQuestID(true, 7226512)
    self:DestroySelf()
end

function Q7226512Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226512Trigger
