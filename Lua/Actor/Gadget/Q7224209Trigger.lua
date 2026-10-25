require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7224209Trigger = class("Q7224209Trigger", GadgetActorProxy)
Q7224209Trigger.defaultAlias = "Q7224209Trigger"
local Q72242ClientConfig = require("Quest/Client/Q72242ClientConfig")

local subIDs = Q72242ClientConfig.SubIDs
local npcs = Q72242ClientConfig.Npcs
local datas = Q72242ClientConfig.Datas

function Q7224209Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7224209Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(19.23082, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7224209Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72242"):FinishQuestID(false, 7224209)
    self:DestroySelf()
end

function Q7224209Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7224209Trigger
