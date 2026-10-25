require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601617Trigger = class("Q7601617Trigger", GadgetActorProxy)
Q7601617Trigger.defaultAlias = "Q7601617Trigger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601617Trigger:OnPostDataPrepare()
    print("Q7601617Trigger - OnPostDataPrepare")
    this = self
end

function Q7601617Trigger:OnPostComponentPrepare()
    print("Q7601617Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(18, 35, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601617Trigger:TriggerIn()
    print("Q7601617Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601617)
    this:DestroySelf()
end

function Q7601617Trigger:PreTriggerIn()
    print("Q7601617Trigger - PreTriggerIn")
end

function Q7601617Trigger:LightUpTriggerIn()
    print("Q7601617Trigger - LightUpTriggerIn")
end

function Q7601617Trigger:TriggerOut()
    print("Q7601617Trigger - TriggerOut")
end

return Q7601617Trigger
