require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601503Trigger = class("Q601503Trigger", GadgetActorProxy)
Q601503Trigger.defaultAlias = "Q601503Trigger"
local Q6015ClientConfig = require("Quest/Client/Q6015ClientConfig")

local this
local subIDs = Q6015ClientConfig.SubIDs
local datas = Q6015ClientConfig.Datas
local npcs = Q6015ClientConfig.Npcs
local points = Q6015ClientConfig.Points

function Q601503Trigger:OnPostDataPrepare()
    print("Q601503Trigger - OnPostDataPrepare")
    this = self
end

function Q601503Trigger:OnPostComponentPrepare()
    print("Q601503Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6015)
end

function Q601503Trigger:TriggerIn()
    print("Q601503Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601503)
    this:DestroySelf()
end

function Q601503Trigger:PreTriggerIn()
    print("Q601503Trigger - PreTriggerIn")
end

function Q601503Trigger:LightUpTriggerIn()
    print("Q601503Trigger - LightUpTriggerIn")
end

function Q601503Trigger:TriggerOut()
    print("Q601503Trigger - TriggerOut")
end

return Q601503Trigger
