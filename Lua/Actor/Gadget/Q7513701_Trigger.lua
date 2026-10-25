require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513701_Trigger = class("Q7513701_Trigger", GadgetActorProxy)
Q7513701_Trigger.defaultAlias = "Q7513701_Trigger"
local Q75137ClientConfig = require("Quest/Client/Q75137ClientConfig")

local this
local subIDs = Q75137ClientConfig.SubIDs
local npcs = Q75137ClientConfig.Npcs
local points = Q75137ClientConfig.Points

function Q7513701_Trigger:OnPostDataPrepare()
    print("Q7513701_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513701_Trigger:OnPostComponentPrepare()
    print("Q7513701_Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(60, 15, 40, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75137)
end

function Q7513701_Trigger:TriggerIn()
    print("Q7513701_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7513701)
    this:DestroySelf()
end

function Q7513701_Trigger:PreTriggerIn()
    print("Q7513701_Trigger - PreTriggerIn")
end

function Q7513701_Trigger:LightUpTriggerIn()
    print("Q7513701_Trigger - LightUpTriggerIn")
end

function Q7513701_Trigger:TriggerOut()
    print("Q7513701_Trigger - TriggerOut")
end

return Q7513701_Trigger
