require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024701Trigger = class("Q4024701Trigger", GadgetActorProxy)
Q4024701Trigger.defaultAlias = "Q4024701Trigger"
local Q40247ClientConfig = require("Quest/Client/Q40247ClientConfig")

local this
local subIDs = Q40247ClientConfig.SubIDs
local datas = Q40247ClientConfig.Datas
local npcs = Q40247ClientConfig.Npcs
local points = Q40247ClientConfig.Points

function Q4024701Trigger:OnPostDataPrepare()
    print("Q4024701Trigger - OnPostDataPrepare")
    this = self
end

function Q4024701Trigger:OnPostComponentPrepare()
    print("Q4024701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40247)
end

function Q4024701Trigger:TriggerIn()
    print("Q4024701Trigger - TriggerIn")
    actorMgr:GetActor("40247"):TransmitPlayerWithQuestIdByData(4024701, 1, datas.TransmitDataNormal, nil, nil, nil)
    this:DestroySelf()
end

function Q4024701Trigger:PreTriggerIn()
    print("Q4024701Trigger - PreTriggerIn")
end

function Q4024701Trigger:LightUpTriggerIn()
    print("Q4024701Trigger - LightUpTriggerIn")
end

function Q4024701Trigger:TriggerOut()
    print("Q4024701Trigger - TriggerOut")
end

return Q4024701Trigger
