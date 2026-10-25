require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7008103Trigger = class("Q7008103Trigger", GadgetActorProxy)
Q7008103Trigger.defaultAlias = "Q7008103Trigger"
local Q70081ClientConfig = require("Quest/Client/Q70081ClientConfig")

local this
local subIDs = Q70081ClientConfig.SubIDs
local datas = Q70081ClientConfig.Datas
local points = Q70081ClientConfig.Points

function Q7008103Trigger:OnPostDataPrepare()
    print("Q7008103Trigger - OnPostDataPrepare")
    this = self
end

function Q7008103Trigger:OnPostComponentPrepare()
    print("Q7008103Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 5, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70081)
end

function Q7008103Trigger:TriggerIn()
    print("Q7008103Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7008103})
    this:DestroySelf()
end

function Q7008103Trigger:PreTriggerIn()
    print("Q7008103Trigger - PreTriggerIn")
end

function Q7008103Trigger:LightUpTriggerIn()
    print("Q7008103Trigger - LightUpTriggerIn")
end

function Q7008103Trigger:TriggerOut()
    print("Q7008103Trigger - TriggerOut")
end

return Q7008103Trigger
