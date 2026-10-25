require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601628Trigger = class("Q7601628Trigger", GadgetActorProxy)
Q7601628Trigger.defaultAlias = "Q7601628Trigger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601628Trigger:OnPostDataPrepare()
    print("Q7601628Trigger - OnPostDataPrepare")
    this = self
end

function Q7601628Trigger:OnPostComponentPrepare()
    print("Q7601628Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601628Trigger:TriggerIn()
    print("Q7601628Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601632)
    this:DestroySelf()
end

function Q7601628Trigger:PreTriggerIn()
    print("Q7601628Trigger - PreTriggerIn")
end

function Q7601628Trigger:LightUpTriggerIn()
    print("Q7601628Trigger - LightUpTriggerIn")
end

function Q7601628Trigger:TriggerOut()
    print("Q7601628Trigger - TriggerOut")
end

return Q7601628Trigger
