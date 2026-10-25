require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323836Trigger = class("Q7323836Trigger", GadgetActorProxy)
Q7323836Trigger.defaultAlias = "Q7323836Trigger"
local Q73238ClientConfig = require("Quest/Client/Q73238ClientConfig")

local this
local subIDs = Q73238ClientConfig.SubIDs
local npcs = Q73238ClientConfig.Npcs
local points = Q73238ClientConfig.Points
local datas = Q73238ClientConfig.Datas

function Q7323836Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323836Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7323836Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323836)
    this:DestroySelf()
end

function Q7323836Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7323836Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7323836Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323836Trigger
