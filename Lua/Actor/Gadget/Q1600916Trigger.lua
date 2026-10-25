require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600916Trigger = class("Q1600916Trigger", GadgetActorProxy)
Q1600916Trigger.defaultAlias = "Q1600916Trigger"
local Q16009ClientConfig = require("Quest/Client/Q16009ClientConfig")

local this
local subIDs = Q16009ClientConfig.SubIDs
local datas = Q16009ClientConfig.Datas
local npcs = Q16009ClientConfig.Npcs
local points = Q16009ClientConfig.Points

function Q1600916Trigger:OnPostDataPrepare()
    print("Q1600916Trigger - OnPostDataPrepare")
    this = self
end

function Q1600916Trigger:OnPostComponentPrepare()
    print("Q1600916Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16009)
end

function Q1600916Trigger:TriggerIn()
    print("Q1600916Trigger - TriggerIn")
    actorMgr:GetActor("16009"):TransmitPlayerByQuestId(1600916, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q1600916Trigger:PreTriggerIn()
    print("Q1600916Trigger - PreTriggerIn")
end

function Q1600916Trigger:LightUpTriggerIn()
    print("Q1600916Trigger - LightUpTriggerIn")
end

function Q1600916Trigger:TriggerOut()
    print("Q1600916Trigger - TriggerOut")
end

return Q1600916Trigger
