require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521403Trigger = class("Q7521403Trigger", GadgetActorProxy)
Q7521403Trigger.defaultAlias = "Q7521403Trigger"
local Q75214ClientConfig = require("Quest/Client/Q75214ClientConfig")

local this
local subIDs = Q75214ClientConfig.SubIDs
local datas = Q75214ClientConfig.Datas
local npcs = Q75214ClientConfig.Npcs
local points = Q75214ClientConfig.Points

function Q7521403Trigger:OnPostDataPrepare()
    print("Q7521403Trigger - OnPostDataPrepare")
    this = self
end

function Q7521403Trigger:OnPostComponentPrepare()
    print("Q7521403Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75214)
end

function Q7521403Trigger:TriggerIn()
    print("Q7521403Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521403)
    this:DestroySelf()
end

function Q7521403Trigger:PreTriggerIn()
    print("Q7521403Trigger - PreTriggerIn")
end

function Q7521403Trigger:LightUpTriggerIn()
    print("Q7521403Trigger - LightUpTriggerIn")
end

function Q7521403Trigger:TriggerOut()
    print("Q7521403Trigger - TriggerOut")
end

return Q7521403Trigger
