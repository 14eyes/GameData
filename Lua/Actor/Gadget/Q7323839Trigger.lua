require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323839Trigger = class("Q7323839Trigger", GadgetActorProxy)
Q7323839Trigger.defaultAlias = "Q7323839Trigger"
local Q73238ClientConfig = require("Quest/Client/Q73238ClientConfig")

local this
local subIDs = Q73238ClientConfig.SubIDs
local npcs = Q73238ClientConfig.Npcs
local points = Q73238ClientConfig.Points
local datas = Q73238ClientConfig.Datas

function Q7323839Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323839Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7323839Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323839)
    this:DestroySelf()
end

function Q7323839Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7323839Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7323839Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323839Trigger
