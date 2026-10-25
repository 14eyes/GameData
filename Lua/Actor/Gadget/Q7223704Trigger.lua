require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223704Trigger = class("Q7223704Trigger", GadgetActorProxy)
Q7223704Trigger.defaultAlias = "Q7223704Trigger"
local Q72237ClientConfig = require("Quest/Client/Q72237ClientConfig")

local subIDs = Q72237ClientConfig.SubIDs
local npcs = Q72237ClientConfig.Npcs
local datas = Q72237ClientConfig.Datas

function Q7223704Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223704Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223704Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72237"):FinishQuestID(false, 7223704)
    self:DestroySelf()
end

function Q7223704Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7223704Trigger
