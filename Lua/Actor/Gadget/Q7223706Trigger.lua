require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223706Trigger = class("Q7223706Trigger", GadgetActorProxy)
Q7223706Trigger.defaultAlias = "Q7223706Trigger"
local Q72237ClientConfig = require("Quest/Client/Q72237ClientConfig")

local subIDs = Q72237ClientConfig.SubIDs
local npcs = Q72237ClientConfig.Npcs
local datas = Q72237ClientConfig.Datas

function Q7223706Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223706Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223706Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72237"):FinishQuestID(false, 7223706)
    self:DestroySelf()
end

function Q7223706Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7223706Trigger
