require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016331Trigger = class("Q4016331Trigger", GadgetActorProxy)
Q4016331Trigger.defaultAlias = "Q4016331Trigger"
local Q40163ClientConfig = require("Quest/Client/Q40163ClientConfig")

local this
local subIDs = Q40163ClientConfig.SubIDs
local datas = Q40163ClientConfig.Datas
local npcs = Q40163ClientConfig.Npcs
local points = Q40163ClientConfig.Points

function Q4016331Trigger:OnPostDataPrepare()
    print("Q4016331Trigger - OnPostDataPrepare")
    this = self
end

function Q4016331Trigger:OnPostComponentPrepare()
    print("Q4016331Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(77, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40163)
end

function Q4016331Trigger:TriggerIn()
    print("Q4016331Trigger - TriggerIn")
    actorMgr:GetActor("40163"):TransmitPlayerWithQuestIdByData(4016331, 1, datas.TransmitData_1, nil, nil, nil)
    this:DestroySelf()
end

function Q4016331Trigger:PreTriggerIn()
    print("Q4016331Trigger - PreTriggerIn")
end

function Q4016331Trigger:LightUpTriggerIn()
    print("Q4016331Trigger - LightUpTriggerIn")
end

function Q4016331Trigger:TriggerOut()
    print("Q4016331Trigger - TriggerOut")
end

return Q4016331Trigger
