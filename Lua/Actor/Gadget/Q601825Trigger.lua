require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601825Trigger = class("Q601825Trigger", GadgetActorProxy)
Q601825Trigger.defaultAlias = "Q601825Trigger"
local Q6018ClientConfig = require("Quest/Client/Q6018ClientConfig")

local this
local subIDs = Q6018ClientConfig.SubIDs
local datas = Q6018ClientConfig.Datas
local npcs = Q6018ClientConfig.Npcs
local points = Q6018ClientConfig.Points

function Q601825Trigger:OnPostDataPrepare()
    print("Q601825Trigger - OnPostDataPrepare")
    this = self
end

function Q601825Trigger:OnPostComponentPrepare()
    print("Q601825Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6018)
end

function Q601825Trigger:TriggerIn()
    print("Q601825Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601825)
    this:DestroySelf()
end

function Q601825Trigger:PreTriggerIn()
    print("Q601825Trigger - PreTriggerIn")
end

function Q601825Trigger:LightUpTriggerIn()
    print("Q601825Trigger - LightUpTriggerIn")
end

function Q601825Trigger:TriggerOut()
    print("Q601825Trigger - TriggerOut")
end

return Q601825Trigger
