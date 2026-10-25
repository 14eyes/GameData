require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601630Trigger = class("Q7601630Trigger", GadgetActorProxy)
Q7601630Trigger.defaultAlias = "Q7601630Trigger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601630Trigger:OnPostDataPrepare()
    print("Q7601630Trigger - OnPostDataPrepare")
    this = self
end

function Q7601630Trigger:OnPostComponentPrepare()
    print("Q7601630Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601630Trigger:TriggerIn()
    print("Q7601630Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601630)
    this:DestroySelf()
end

function Q7601630Trigger:PreTriggerIn()
    print("Q7601630Trigger - PreTriggerIn")
end

function Q7601630Trigger:LightUpTriggerIn()
    print("Q7601630Trigger - LightUpTriggerIn")
end

function Q7601630Trigger:TriggerOut()
    print("Q7601630Trigger - TriggerOut")
end

return Q7601630Trigger
