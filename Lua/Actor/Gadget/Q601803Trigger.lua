require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601803Trigger = class("Q601803Trigger", GadgetActorProxy)
Q601803Trigger.defaultAlias = "Q601803Trigger"
local Q6018ClientConfig = require("Quest/Client/Q6018ClientConfig")

local this
local subIDs = Q6018ClientConfig.SubIDs
local datas = Q6018ClientConfig.Datas
local npcs = Q6018ClientConfig.Npcs
local points = Q6018ClientConfig.Points

function Q601803Trigger:OnPostDataPrepare()
    print("Q601803Trigger - OnPostDataPrepare")
    this = self
end

function Q601803Trigger:OnPostComponentPrepare()
    print("Q601803Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6018)
end

function Q601803Trigger:TriggerIn()
    print("Q601803Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601803)
    this:DestroySelf()
end

function Q601803Trigger:PreTriggerIn()
    print("Q601803Trigger - PreTriggerIn")
end

function Q601803Trigger:LightUpTriggerIn()
    print("Q601803Trigger - LightUpTriggerIn")
end

function Q601803Trigger:TriggerOut()
    print("Q601803Trigger - TriggerOut")
end

return Q601803Trigger
