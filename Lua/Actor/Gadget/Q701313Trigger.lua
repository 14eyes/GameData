require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701313Trigger = class("Q701313Trigger", GadgetActorProxy)
Q701313Trigger.defaultAlias = "Q701313Trigger"
local Q7013ClientConfig = require("Quest/Client/Q7013ClientConfig")

local this
local subIDs = Q7013ClientConfig.SubIDs
local datas = Q7013ClientConfig.Datas
local npcs = Q7013ClientConfig.Npcs
local points = Q7013ClientConfig.Points

function Q701313Trigger:OnPostDataPrepare()
    print("Q701313Trigger - OnPostDataPrepare")
    this = self
end

function Q701313Trigger:OnPostComponentPrepare()
    print("Q701313Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7013)
end

function Q701313Trigger:TriggerIn()
    print("Q701313Trigger - TriggerIn")
    actorMgr:GetActor("7013"):TransmitPlayerWithQuestIdByData(701312, 1, datas.TransmitBlackData, nil, nil, nil)
    this:DestroySelf()
end

function Q701313Trigger:PreTriggerIn()
    print("Q701313Trigger - PreTriggerIn")
end

function Q701313Trigger:LightUpTriggerIn()
    print("Q701313Trigger - LightUpTriggerIn")
end

function Q701313Trigger:TriggerOut()
    print("Q701313Trigger - TriggerOut")
end

return Q701313Trigger
