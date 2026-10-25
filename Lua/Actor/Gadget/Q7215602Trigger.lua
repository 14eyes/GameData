require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215602Trigger = class("Q7215602Trigger", GadgetActorProxy)
Q7215602Trigger.defaultAlias = "Q7215602Trigger"
local Q72156ClientConfig = require("Quest/Client/Q72156ClientConfig")

local subIDs = Q72156ClientConfig.SubIDs
local npcs = Q72156ClientConfig.Npcs
local datas = Q72156ClientConfig.Datas

function Q7215602Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215602Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215602Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72156"):FinishQuestID(false, 7215602)
    self:DestroySelf()
end

function Q7215602Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215602Trigger
