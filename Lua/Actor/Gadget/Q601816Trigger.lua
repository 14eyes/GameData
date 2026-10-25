require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601816Trigger = class("Q601816Trigger", GadgetActorProxy)
Q601816Trigger.defaultAlias = "Q601816Trigger"
local Q6018ClientConfig = require("Quest/Client/Q6018ClientConfig")

local this
local subIDs = Q6018ClientConfig.SubIDs
local datas = Q6018ClientConfig.Datas
local npcs = Q6018ClientConfig.Npcs
local points = Q6018ClientConfig.Points

function Q601816Trigger:OnPostDataPrepare()
    print("Q601816Trigger - OnPostDataPrepare")
    this = self
end

function Q601816Trigger:OnPostComponentPrepare()
    print("Q601816Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6018)
end

function Q601816Trigger:TriggerIn()
    print("Q601816Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601816)
    this:DestroySelf()
end

function Q601816Trigger:PreTriggerIn()
    print("Q601816Trigger - PreTriggerIn")
end

function Q601816Trigger:LightUpTriggerIn()
    print("Q601816Trigger - LightUpTriggerIn")
end

function Q601816Trigger:TriggerOut()
    print("Q601816Trigger - TriggerOut")
end

return Q601816Trigger
