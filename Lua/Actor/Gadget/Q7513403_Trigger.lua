require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513403_Trigger = class("Q7513403_Trigger", GadgetActorProxy)
Q7513403_Trigger.defaultAlias = "Q7513403_Trigger"
local Q75134ClientConfig = require("Quest/Client/Q75134ClientConfig")

local this
local subIDs = Q75134ClientConfig.SubIDs
local datas = Q75134ClientConfig.Datas
local npcs = Q75134ClientConfig.Npcs

function Q7513403_Trigger:OnPostDataPrepare()
    print("Q7513403_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513403_Trigger:OnPostComponentPrepare()
    print("Q7513403_Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12.76581, 10.2173, 8.694516, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75134)
end

function Q7513403_Trigger:TriggerIn()
    print("Q7513403_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7513403)
    this:DestroySelf()
end

function Q7513403_Trigger:PreTriggerIn()
    print("Q7513403_Trigger - PreTriggerIn")
end

function Q7513403_Trigger:LightUpTriggerIn()
    print("Q7513403_Trigger - LightUpTriggerIn")
end

function Q7513403_Trigger:TriggerOut()
    print("Q7513403_Trigger - TriggerOut")
end

return Q7513403_Trigger
