require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7008102Trigger = class("Q7008102Trigger", GadgetActorProxy)
Q7008102Trigger.defaultAlias = "Q7008102Trigger"
local Q70081ClientConfig = require("Quest/Client/Q70081ClientConfig")

local this
local subIDs = Q70081ClientConfig.SubIDs
local datas = Q70081ClientConfig.Datas
local points = Q70081ClientConfig.Points

function Q7008102Trigger:OnPostDataPrepare()
    print("Q7008102Trigger - OnPostDataPrepare")
    this = self
end

function Q7008102Trigger:OnPostComponentPrepare()
    print("Q7008102Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70081)
end

function Q7008102Trigger:TriggerIn()
    print("Q7008102Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7008102)
    this:DestroySelf()
end

function Q7008102Trigger:PreTriggerIn()
    print("Q7008102Trigger - PreTriggerIn")
end

function Q7008102Trigger:LightUpTriggerIn()
    print("Q7008102Trigger - LightUpTriggerIn")
end

function Q7008102Trigger:TriggerOut()
    print("Q7008102Trigger - TriggerOut")
end

return Q7008102Trigger
