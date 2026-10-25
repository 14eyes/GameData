require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602805Trigger = class("Q602805Trigger", GadgetActorProxy)
Q602805Trigger.defaultAlias = "Q602805Trigger"
local Q6028ClientConfig = require("Quest/Client/Q6028ClientConfig")

local this
local subIDs = Q6028ClientConfig.SubIDs
local datas = Q6028ClientConfig.Datas
local npcs = Q6028ClientConfig.Npcs
local points = Q6028ClientConfig.Points

function Q602805Trigger:OnPostDataPrepare()
    print("Q602805Trigger - OnPostDataPrepare")
    this = self
end

function Q602805Trigger:OnPostComponentPrepare()
    print("Q602805Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6028)
end

function Q602805Trigger:TriggerIn()
    print("Q602805Trigger - TriggerIn")
    actorMgr:GetActor("6028"):TransmitPlayerWithQuestIdByData(602805, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q602805Trigger:PreTriggerIn()
    print("Q602805Trigger - PreTriggerIn")
end

function Q602805Trigger:LightUpTriggerIn()
    print("Q602805Trigger - LightUpTriggerIn")
end

function Q602805Trigger:TriggerOut()
    print("Q602805Trigger - TriggerOut")
end

return Q602805Trigger
