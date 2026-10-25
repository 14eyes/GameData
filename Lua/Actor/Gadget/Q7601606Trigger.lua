require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601606Trigger = class("Q7601606Trigger", GadgetActorProxy)
Q7601606Trigger.defaultAlias = "Q7601606Trigger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601606Trigger:OnPostDataPrepare()
    print("Q7601606Trigger - OnPostDataPrepare")
    this = self
end

function Q7601606Trigger:OnPostComponentPrepare()
    print("Q7601606Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(22, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601606Trigger:TriggerIn()
    print("Q7601606Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601606)
    this:DestroySelf()
end

function Q7601606Trigger:PreTriggerIn()
    print("Q7601606Trigger - PreTriggerIn")
end

function Q7601606Trigger:LightUpTriggerIn()
    print("Q7601606Trigger - LightUpTriggerIn")
end

function Q7601606Trigger:TriggerOut()
    print("Q7601606Trigger - TriggerOut")
end

return Q7601606Trigger
