require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513708_Trigger = class("Q7513708_Trigger", GadgetActorProxy)
Q7513708_Trigger.defaultAlias = "Q7513708_Trigger"
local Q75137ClientConfig = require("Quest/Client/Q75137ClientConfig")

local this
local subIDs = Q75137ClientConfig.SubIDs
local npcs = Q75137ClientConfig.Npcs
local points = Q75137ClientConfig.Points

function Q7513708_Trigger:OnPostDataPrepare()
    print("Q7513708_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513708_Trigger:OnPostComponentPrepare()
    print("Q7513708_Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(271.68768, 575.29285, 54.737263, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75137)
end

function Q7513708_Trigger:TriggerIn()
    print("Q7513708_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7513708)
    this:DestroySelf()
end

function Q7513708_Trigger:PreTriggerIn()
    print("Q7513708_Trigger - PreTriggerIn")
end

function Q7513708_Trigger:LightUpTriggerIn()
    print("Q7513708_Trigger - LightUpTriggerIn")
end

function Q7513708_Trigger:TriggerOut()
    print("Q7513708_Trigger - TriggerOut")
end

return Q7513708_Trigger
