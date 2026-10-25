require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601818Trigger = class("Q601818Trigger", GadgetActorProxy)
Q601818Trigger.defaultAlias = "Q601818Trigger"
local Q6018ClientConfig = require("Quest/Client/Q6018ClientConfig")

local this
local subIDs = Q6018ClientConfig.SubIDs
local datas = Q6018ClientConfig.Datas
local npcs = Q6018ClientConfig.Npcs
local points = Q6018ClientConfig.Points

function Q601818Trigger:OnPostDataPrepare()
    print("Q601818Trigger - OnPostDataPrepare")
    this = self
end

function Q601818Trigger:OnPostComponentPrepare()
    print("Q601818Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6018)
end

function Q601818Trigger:TriggerIn()
    print("Q601818Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601818)
    this:DestroySelf()
end

function Q601818Trigger:PreTriggerIn()
    print("Q601818Trigger - PreTriggerIn")
end

function Q601818Trigger:LightUpTriggerIn()
    print("Q601818Trigger - LightUpTriggerIn")
end

function Q601818Trigger:TriggerOut()
    print("Q601818Trigger - TriggerOut")
end

return Q601818Trigger
