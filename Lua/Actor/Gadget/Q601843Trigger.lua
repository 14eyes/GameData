require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601843Trigger = class("Q601843Trigger", GadgetActorProxy)
Q601843Trigger.defaultAlias = "Q601843Trigger"
local Q6018ClientConfig = require("Quest/Client/Q6018ClientConfig")

local this
local subIDs = Q6018ClientConfig.SubIDs
local datas = Q6018ClientConfig.Datas
local npcs = Q6018ClientConfig.Npcs
local points = Q6018ClientConfig.Points

function Q601843Trigger:OnPostDataPrepare()
    print("Q601843Trigger - OnPostDataPrepare")
    this = self
end

function Q601843Trigger:OnPostComponentPrepare()
    print("Q601843Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6018)
end

function Q601843Trigger:TriggerIn()
    print("Q601843Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601843)
    actorMgr:GetActor("6018"):EnterSceneLookCamera({x = 563.357, y = 61.537, z = 488.856}, 0, 3, false, false)
    this:DestroySelf()
end

function Q601843Trigger:PreTriggerIn()
    print("Q601843Trigger - PreTriggerIn")
end

function Q601843Trigger:LightUpTriggerIn()
    print("Q601843Trigger - LightUpTriggerIn")
end

function Q601843Trigger:TriggerOut()
    print("Q601843Trigger - TriggerOut")
end

return Q601843Trigger
