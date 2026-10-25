require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513401_Trigger = class("Q7513401_Trigger", GadgetActorProxy)
Q7513401_Trigger.defaultAlias = "Q7513401_Trigger"
local Q75134ClientConfig = require("Quest/Client/Q75134ClientConfig")

local this
local subIDs = Q75134ClientConfig.SubIDs
local datas = Q75134ClientConfig.Datas
local npcs = Q75134ClientConfig.Npcs

function Q7513401_Trigger:OnPostDataPrepare()
    print("Q7513401_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513401_Trigger:OnPostComponentPrepare()
    print("Q7513401_Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(24.258078, 6.34325, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75134)
end

function Q7513401_Trigger:TriggerIn()
    print("Q7513401_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7513401)
    this:DestroySelf()
end

function Q7513401_Trigger:PreTriggerIn()
    print("Q7513401_Trigger - PreTriggerIn")
end

function Q7513401_Trigger:LightUpTriggerIn()
    print("Q7513401_Trigger - LightUpTriggerIn")
end

function Q7513401_Trigger:TriggerOut()
    print("Q7513401_Trigger - TriggerOut")
end

return Q7513401_Trigger
