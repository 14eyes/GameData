require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601808Trigger = class("Q601808Trigger", GadgetActorProxy)
Q601808Trigger.defaultAlias = "Q601808Trigger"
local Q6018ClientConfig = require("Quest/Client/Q6018ClientConfig")

local this
local subIDs = Q6018ClientConfig.SubIDs
local datas = Q6018ClientConfig.Datas
local npcs = Q6018ClientConfig.Npcs
local points = Q6018ClientConfig.Points

function Q601808Trigger:OnPostDataPrepare()
    print("Q601808Trigger - OnPostDataPrepare")
    this = self
end

function Q601808Trigger:OnPostComponentPrepare()
    print("Q601808Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6018)
end

function Q601808Trigger:TriggerIn()
    print("Q601808Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601808)
    this:DestroySelf()
end

function Q601808Trigger:PreTriggerIn()
    print("Q601808Trigger - PreTriggerIn")
end

function Q601808Trigger:LightUpTriggerIn()
    print("Q601808Trigger - LightUpTriggerIn")
end

function Q601808Trigger:TriggerOut()
    print("Q601808Trigger - TriggerOut")
end

return Q601808Trigger
