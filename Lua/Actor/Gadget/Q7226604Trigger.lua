require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226604Trigger = class("Q7226604Trigger", GadgetActorProxy)
Q7226604Trigger.defaultAlias = "Q7226604Trigger"
local Q72266ClientConfig = require("Quest/Client/Q72266ClientConfig")

local subIDs = Q72266ClientConfig.SubIDs
local npcs = Q72266ClientConfig.Npcs
local datas = Q72266ClientConfig.Datas

function Q7226604Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226604Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226604Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72266"):FinishQuestID(false, 7226604)
    self:DestroySelf()
end

function Q7226604Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226604Trigger
