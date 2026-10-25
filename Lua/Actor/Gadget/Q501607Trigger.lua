require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501607Trigger = class("Q501607Trigger", GadgetActorProxy)
Q501607Trigger.defaultAlias = "Q501607Trigger"
local Q5016ClientConfig = require("Quest/Client/Q5016ClientConfig")

local this
local subIDs = Q5016ClientConfig.SubIDs
local datas = Q5016ClientConfig.Datas
local npcs = Q5016ClientConfig.Npcs
local points = Q5016ClientConfig.Points

function Q501607Trigger:OnPostDataPrepare()
    print("Q501607Trigger - OnPostDataPrepare")
    this = self
end

function Q501607Trigger:OnPostComponentPrepare()
    print("Q501607Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5016)
end

function Q501607Trigger:TriggerIn()
    print("Q501607Trigger - TriggerIn")
    actorMgr:GetActor("5016"):TransmitPlayerWithQuestIdByData(501607, 1, datas.YeShenTransmitData, nil, nil, nil)
end

function Q501607Trigger:PreTriggerIn()
    print("Q501607Trigger - PreTriggerIn")
end

function Q501607Trigger:LightUpTriggerIn()
    print("Q501607Trigger - LightUpTriggerIn")
end

function Q501607Trigger:TriggerOut()
    print("Q501607Trigger - TriggerOut")
end

return Q501607Trigger
