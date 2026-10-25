require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602804Trigger = class("Q602804Trigger", GadgetActorProxy)
Q602804Trigger.defaultAlias = "Q602804Trigger"
local Q6028ClientConfig = require("Quest/Client/Q6028ClientConfig")

local this
local subIDs = Q6028ClientConfig.SubIDs
local datas = Q6028ClientConfig.Datas
local npcs = Q6028ClientConfig.Npcs
local points = Q6028ClientConfig.Points

function Q602804Trigger:OnPostDataPrepare()
    print("Q602804Trigger - OnPostDataPrepare")
    this = self
end

function Q602804Trigger:OnPostComponentPrepare()
    print("Q602804Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(130, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6028)
end

function Q602804Trigger:TriggerIn()
    print("Q602804Trigger - TriggerIn")
    actorMgr:GetActor("6028"):TransmitPlayerWithQuestIdByData(602804, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q602804Trigger:PreTriggerIn()
    print("Q602804Trigger - PreTriggerIn")
end

function Q602804Trigger:LightUpTriggerIn()
    print("Q602804Trigger - LightUpTriggerIn")
end

function Q602804Trigger:TriggerOut()
    print("Q602804Trigger - TriggerOut")
end

return Q602804Trigger
