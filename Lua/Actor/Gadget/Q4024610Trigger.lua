require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024610Trigger = class("Q4024610Trigger", GadgetActorProxy)
Q4024610Trigger.defaultAlias = "Q4024610Trigger"
local Q40246ClientConfig = require("Quest/Client/Q40246ClientConfig")

local this
local subIDs = Q40246ClientConfig.SubIDs
local datas = Q40246ClientConfig.Datas
local npcs = Q40246ClientConfig.Npcs
local points = Q40246ClientConfig.Points

function Q4024610Trigger:OnPostDataPrepare()
    print("Q4024610Trigger - OnPostDataPrepare")
    this = self
end

function Q4024610Trigger:OnPostComponentPrepare()
    print("Q4024610Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40246)
end

function Q4024610Trigger:TriggerIn()
    print("Q4024610Trigger - TriggerIn")
    actorMgr:GetActor("40246"):TransmitPlayerWithQuestIdByData(4024611, 2, datas.TransmitDataNormal, nil, nil, nil)
    this:DestroySelf()
end

function Q4024610Trigger:PreTriggerIn()
    print("Q4024610Trigger - PreTriggerIn")
end

function Q4024610Trigger:LightUpTriggerIn()
    print("Q4024610Trigger - LightUpTriggerIn")
end

function Q4024610Trigger:TriggerOut()
    print("Q4024610Trigger - TriggerOut")
end

return Q4024610Trigger
