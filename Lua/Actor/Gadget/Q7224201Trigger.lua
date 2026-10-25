require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7224201Trigger = class("Q7224201Trigger", GadgetActorProxy)
Q7224201Trigger.defaultAlias = "Q7224201Trigger"
local Q72242ClientConfig = require("Quest/Client/Q72242ClientConfig")

local subIDs = Q72242ClientConfig.SubIDs
local npcs = Q72242ClientConfig.Npcs
local datas = Q72242ClientConfig.Datas

function Q7224201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7224201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(37.74472, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7224201Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72242"):FinishQuestID(false, 7224201)
    self:DestroySelf()
end

function Q7224201Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7224201Trigger
