require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513505_Trigger = class("Q7513505_Trigger", GadgetActorProxy)
Q7513505_Trigger.defaultAlias = "Q7513505_Trigger"
local Q75135ClientConfig = require("Quest/Client/Q75135ClientConfig")

local this
local subIDs = Q75135ClientConfig.SubIDs
local npcs = Q75135ClientConfig.Npcs

function Q7513505_Trigger:OnPostDataPrepare()
    print("Q7513505_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513505_Trigger:OnPostComponentPrepare()
    print("Q7513505_Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12.01793, 22.844854, 26.657625, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75135)
end

function Q7513505_Trigger:TriggerIn()
    print("Q7513505_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7513505)
    this:DestroySelf()
end

function Q7513505_Trigger:PreTriggerIn()
    print("Q7513505_Trigger - PreTriggerIn")
end

function Q7513505_Trigger:LightUpTriggerIn()
    print("Q7513505_Trigger - LightUpTriggerIn")
end

function Q7513505_Trigger:TriggerOut()
    print("Q7513505_Trigger - TriggerOut")
end

return Q7513505_Trigger
