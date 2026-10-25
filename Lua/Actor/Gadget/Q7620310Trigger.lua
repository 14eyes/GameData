require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620310Trigger = class("Q7620310Trigger", GadgetActorProxy)
Q7620310Trigger.defaultAlias = "Q7620310Trigger"
local Q76203ClientConfig = require("Quest/Client/Q76203ClientConfig")

local this
local subIDs = Q76203ClientConfig.SubIDs
local datas = Q76203ClientConfig.Datas
local npcs = Q76203ClientConfig.Npcs
local points = Q76203ClientConfig.Points

function Q7620310Trigger:OnPostDataPrepare()
    print("Q7620310Trigger - OnPostDataPrepare")
    this = self
end

function Q7620310Trigger:OnPostComponentPrepare()
    print("Q7620310Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76203)
end

function Q7620310Trigger:TriggerIn()
    print("Q7620310Trigger - TriggerIn")
    actorMgr:GetActor("76203"):TransmitPlayerByQuestId(7620310, 2, nil, nil, nil)
    this:DestroySelf()
end

function Q7620310Trigger:PreTriggerIn()
    print("Q7620310Trigger - PreTriggerIn")
end

function Q7620310Trigger:LightUpTriggerIn()
    print("Q7620310Trigger - LightUpTriggerIn")
end

function Q7620310Trigger:TriggerOut()
    print("Q7620310Trigger - TriggerOut")
end

return Q7620310Trigger
