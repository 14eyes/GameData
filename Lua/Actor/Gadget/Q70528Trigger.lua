require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70528Trigger = class("Q70528Trigger", GadgetActorProxy)
Q70528Trigger.defaultAlias = "Q70528Trigger"
local Q70528ClientConfig = require("Quest/Client/Q70528ClientConfig")

local this
local subIDs = Q70528ClientConfig.SubIDs
local npcs = Q70528ClientConfig.Npcs
local datas = Q70528ClientConfig.Datas

function Q70528Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70528Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(19, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q70528Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7052801)
    actorUtils.FinishQuestID(false, 7052901)
    actorUtils.FinishQuestID(false, 7053001)
    this:DestroySelf()
end

function Q70528Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q70528Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q70528Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70528Trigger
