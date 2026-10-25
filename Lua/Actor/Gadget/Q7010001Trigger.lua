require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7010001Trigger = class("Q7010001Trigger", GadgetActorProxy)
Q7010001Trigger.defaultAlias = "Q7010001Trigger"
local Q70100ClientConfig = require("Quest/Client/Q70100ClientConfig")

local this
local subIDs = Q70100ClientConfig.SubIDs
local datas = Q70100ClientConfig.Datas
local npcs = Q70100ClientConfig.Npcs
local points = Q70100ClientConfig.Points

function Q7010001Trigger:OnPostDataPrepare()
    print("Q7010001Trigger - OnPostDataPrepare")
    this = self
end

function Q7010001Trigger:OnPostComponentPrepare()
    print("Q7010001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70100)
end

function Q7010001Trigger:TriggerIn()
    print("Q7010001Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7010001})
    this:DestroySelf()
end

function Q7010001Trigger:PreTriggerIn()
    print("Q7010001Trigger - PreTriggerIn")
end

function Q7010001Trigger:LightUpTriggerIn()
    print("Q7010001Trigger - LightUpTriggerIn")
end

function Q7010001Trigger:TriggerOut()
    print("Q7010001Trigger - TriggerOut")
end

return Q7010001Trigger
