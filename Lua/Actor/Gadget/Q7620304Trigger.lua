require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620304Trigger = class("Q7620304Trigger", GadgetActorProxy)
Q7620304Trigger.defaultAlias = "Q7620304Trigger"
local Q76203ClientConfig = require("Quest/Client/Q76203ClientConfig")

local this
local subIDs = Q76203ClientConfig.SubIDs
local datas = Q76203ClientConfig.Datas
local npcs = Q76203ClientConfig.Npcs
local points = Q76203ClientConfig.Points

function Q7620304Trigger:OnPostDataPrepare()
    print("Q7620304Trigger - OnPostDataPrepare")
    this = self
end

function Q7620304Trigger:OnPostComponentPrepare()
    print("Q7620304Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76203)
end

function Q7620304Trigger:TriggerIn()
    print("Q7620304Trigger - TriggerIn")
    actorMgr:GetActor("76203"):TransmitPlayerByQuestId(7620304, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q7620304Trigger:PreTriggerIn()
    print("Q7620304Trigger - PreTriggerIn")
end

function Q7620304Trigger:LightUpTriggerIn()
    print("Q7620304Trigger - LightUpTriggerIn")
end

function Q7620304Trigger:TriggerOut()
    print("Q7620304Trigger - TriggerOut")
end

return Q7620304Trigger
