require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226504Trigger = class("Q7226504Trigger", GadgetActorProxy)
Q7226504Trigger.defaultAlias = "Q7226504Trigger"
local Q72265ClientConfig = require("Quest/Client/Q72265ClientConfig")

local subIDs = Q72265ClientConfig.SubIDs
local npcs = Q72265ClientConfig.Npcs
local datas = Q72265ClientConfig.Datas

function Q7226504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226504Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72265"):FinishQuestID(false, 7226504)
    self:DestroySelf()
end

function Q7226504Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226504Trigger
