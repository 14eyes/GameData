require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614719Trigger = class("Q7614719Trigger", GadgetActorProxy)
Q7614719Trigger.defaultAlias = "Q7614719Trigger"
local Q76147ClientConfig = require("Quest/Client/Q76147ClientConfig")

local this
local subIDs = Q76147ClientConfig.SubIDs
local datas = Q76147ClientConfig.Datas
local npcs = Q76147ClientConfig.Npcs
local points = Q76147ClientConfig.Points

function Q7614719Trigger:OnPostDataPrepare()
    print("Q7614719Trigger - OnPostDataPrepare")
    this = self
end

function Q7614719Trigger:OnPostComponentPrepare()
    print("Q7614719Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10.316358, 13.18712, 14.991967, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76147)
end

function Q7614719Trigger:TriggerIn()
    print("Q7614719Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614719)
    this:DestroySelf()
end

function Q7614719Trigger:PreTriggerIn()
    print("Q7614719Trigger - PreTriggerIn")
end

function Q7614719Trigger:LightUpTriggerIn()
    print("Q7614719Trigger - LightUpTriggerIn")
end

function Q7614719Trigger:TriggerOut()
    print("Q7614719Trigger - TriggerOut")
end

return Q7614719Trigger
