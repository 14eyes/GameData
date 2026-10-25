require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321965Trigger = class("Q7321965Trigger", GadgetActorProxy)
Q7321965Trigger.defaultAlias = "Q7321965Trigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321965Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321965Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7321965Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7321965)
    this:DestroySelf()
end

function Q7321965Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7321965Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7321965Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321965Trigger
