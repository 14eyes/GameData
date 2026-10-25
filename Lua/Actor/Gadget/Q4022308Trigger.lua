require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022308Trigger = class("Q4022308Trigger", GadgetActorProxy)
Q4022308Trigger.defaultAlias = "Q4022308Trigger"
local Q40223ClientConfig = require("Quest/Client/Q40223ClientConfig")

local this
local subIDs = Q40223ClientConfig.SubIDs
local datas = Q40223ClientConfig.Datas
local npcs = Q40223ClientConfig.Npcs
local points = Q40223ClientConfig.Points

function Q4022308Trigger:OnPostDataPrepare()
    print("Q4022308Trigger - OnPostDataPrepare")
    this = self
end

function Q4022308Trigger:OnPostComponentPrepare()
    print("Q4022308Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40223)
end

function Q4022308Trigger:TriggerIn()
    print("Q4022308Trigger - TriggerIn")
    actorMgr:GetActor("40223"):TransmitPlayerWithQuestIdByData(4022308, 2, datas.TransmitData4022210, nil, nil, nil)
    this:DestroySelf()
end

function Q4022308Trigger:PreTriggerIn()
    print("Q4022308Trigger - PreTriggerIn")
end

function Q4022308Trigger:LightUpTriggerIn()
    print("Q4022308Trigger - LightUpTriggerIn")
end

function Q4022308Trigger:TriggerOut()
    print("Q4022308Trigger - TriggerOut")
end

return Q4022308Trigger
