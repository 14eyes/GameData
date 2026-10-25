require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223701Trigger = class("Q7223701Trigger", GadgetActorProxy)
Q7223701Trigger.defaultAlias = "Q7223701Trigger"
local Q72237ClientConfig = require("Quest/Client/Q72237ClientConfig")

local subIDs = Q72237ClientConfig.SubIDs
local npcs = Q72237ClientConfig.Npcs
local datas = Q72237ClientConfig.Datas

function Q7223701Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223701Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223701Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72237"):FinishQuestID(false, 7223701)
    self:DestroySelf()
end

function Q7223701Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7223701Trigger
