require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223911Trigger = class("Q7223911Trigger", GadgetActorProxy)
Q7223911Trigger.defaultAlias = "Q7223911Trigger"
local Q72239ClientConfig = require("Quest/Client/Q72239ClientConfig")

local subIDs = Q72239ClientConfig.SubIDs
local npcs = Q72239ClientConfig.Npcs
local datas = Q72239ClientConfig.Datas

function Q7223911Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223911Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18.13516, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223911Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72239"):FinishQuestID(false, 7223911)
    self:DestroySelf()
end

function Q7223911Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7223911Trigger
