require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024006Trigger = class("Q4024006Trigger", GadgetActorProxy)
Q4024006Trigger.defaultAlias = "Q4024006Trigger"
local Q40240ClientConfig = require("Quest/Client/Q40240ClientConfig")

local this
local subIDs = Q40240ClientConfig.SubIDs
local datas = Q40240ClientConfig.Datas
local npcs = Q40240ClientConfig.Npcs
local points = Q40240ClientConfig.Points

function Q4024006Trigger:OnPostDataPrepare()
    print("Q4024006Trigger - OnPostDataPrepare")
    this = self
end

function Q4024006Trigger:OnPostComponentPrepare()
    print("Q4024006Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40240)
end

function Q4024006Trigger:TriggerIn()
    print("Q4024006Trigger - TriggerIn")
    actorMgr:GetActor("40240"):TransmitPlayerWithQuestIdByData(4024006, 1, datas.TransmitData02, nil, nil, nil)
end

function Q4024006Trigger:PreTriggerIn()
    print("Q4024006Trigger - PreTriggerIn")
end

function Q4024006Trigger:LightUpTriggerIn()
    print("Q4024006Trigger - LightUpTriggerIn")
end

function Q4024006Trigger:TriggerOut()
    print("Q4024006Trigger - TriggerOut")
end

return Q4024006Trigger
