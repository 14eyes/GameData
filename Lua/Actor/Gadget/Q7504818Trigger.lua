require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7504818Trigger = class("Q7504818Trigger", GadgetActorProxy)
Q7504818Trigger.defaultAlias = "Q7504818Trigger"
local Q75048ClientConfig = require("Quest/Client/Q75048ClientConfig")

local this
local subIDs = Q75048ClientConfig.SubIDs
local datas = Q75048ClientConfig.Datas
local npcs = Q75048ClientConfig.Npcs
local points = Q75048ClientConfig.Points

function Q7504818Trigger:OnPostDataPrepare()
    print("Q7504818Trigger - OnPostDataPrepare")
    this = self
end

function Q7504818Trigger:OnPostComponentPrepare()
    print("Q7504818Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(29.58341, 28.589888, 9.384381, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75048)
end

function Q7504818Trigger:TriggerIn()
    print("Q7504818Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7504818)
    this:DestroySelf()
end

function Q7504818Trigger:PreTriggerIn()
    print("Q7504818Trigger - PreTriggerIn")
end

function Q7504818Trigger:LightUpTriggerIn()
    print("Q7504818Trigger - LightUpTriggerIn")
end

function Q7504818Trigger:TriggerOut()
    print("Q7504818Trigger - TriggerOut")
end

return Q7504818Trigger
