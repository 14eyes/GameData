require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7116303Trigger = class("Q7116303Trigger", GadgetActorProxy)
Q7116303Trigger.defaultAlias = "Q7116303Trigger"
local Q71163ClientConfig = require("Quest/Client/Q71163ClientConfig")

local this
local subIDs = Q71163ClientConfig.SubIDs
local datas = Q71163ClientConfig.Datas
local npcs = Q71163ClientConfig.Npcs
local points = Q71163ClientConfig.Points

function Q7116303Trigger:OnPostDataPrepare()
    print("Q7116303Trigger - OnPostDataPrepare")
    this = self
end

function Q7116303Trigger:OnPostComponentPrepare()
    print("Q7116303Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71163)
end

function Q7116303Trigger:TriggerIn()
    print("Q7116303Trigger - TriggerIn")
    actorMgr:GetActor("71163"):TransmitPlayerWithQuestIdByData(7116304, 3, datas.TransmitData01, nil, nil, nil)
    this:DestroySelf()
end

function Q7116303Trigger:PreTriggerIn()
    print("Q7116303Trigger - PreTriggerIn")
end

function Q7116303Trigger:LightUpTriggerIn()
    print("Q7116303Trigger - LightUpTriggerIn")
end

function Q7116303Trigger:TriggerOut()
    print("Q7116303Trigger - TriggerOut")
end

return Q7116303Trigger
