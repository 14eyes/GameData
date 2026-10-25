require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7008105Trigger = class("Q7008105Trigger", GadgetActorProxy)
Q7008105Trigger.defaultAlias = "Q7008105Trigger"
local Q70081ClientConfig = require("Quest/Client/Q70081ClientConfig")

local this
local subIDs = Q70081ClientConfig.SubIDs
local datas = Q70081ClientConfig.Datas
local points = Q70081ClientConfig.Points

function Q7008105Trigger:OnPostDataPrepare()
    print("Q7008105Trigger - OnPostDataPrepare")
    this = self
end

function Q7008105Trigger:OnPostComponentPrepare()
    print("Q7008105Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70081)
end

function Q7008105Trigger:TriggerIn()
    print("Q7008105Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7008105})
    this:DestroySelf()
end

function Q7008105Trigger:PreTriggerIn()
    print("Q7008105Trigger - PreTriggerIn")
end

function Q7008105Trigger:LightUpTriggerIn()
    print("Q7008105Trigger - LightUpTriggerIn")
end

function Q7008105Trigger:TriggerOut()
    print("Q7008105Trigger - TriggerOut")
end

return Q7008105Trigger
