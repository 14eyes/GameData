require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620303Trigger = class("Q7620303Trigger", GadgetActorProxy)
Q7620303Trigger.defaultAlias = "Q7620303Trigger"
local Q76203ClientConfig = require("Quest/Client/Q76203ClientConfig")

local this
local subIDs = Q76203ClientConfig.SubIDs
local datas = Q76203ClientConfig.Datas
local npcs = Q76203ClientConfig.Npcs
local points = Q76203ClientConfig.Points

function Q7620303Trigger:OnPostDataPrepare()
    print("Q7620303Trigger - OnPostDataPrepare")
    this = self
end

function Q7620303Trigger:OnPostComponentPrepare()
    print("Q7620303Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76203)
end

function Q7620303Trigger:TriggerIn()
    print("Q7620303Trigger - TriggerIn")
    actorMgr:GetActor("76203"):TransmitPlayerByQuestId(7620303, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q7620303Trigger:PreTriggerIn()
    print("Q7620303Trigger - PreTriggerIn")
end

function Q7620303Trigger:LightUpTriggerIn()
    print("Q7620303Trigger - LightUpTriggerIn")
end

function Q7620303Trigger:TriggerOut()
    print("Q7620303Trigger - TriggerOut")
end

return Q7620303Trigger
