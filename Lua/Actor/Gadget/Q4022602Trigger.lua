require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022602Trigger = class("Q4022602Trigger", GadgetActorProxy)
Q4022602Trigger.defaultAlias = "Q4022602Trigger"
local Q40226ClientConfig = require("Quest/Client/Q40226ClientConfig")

local this
local subIDs = Q40226ClientConfig.SubIDs
local datas = Q40226ClientConfig.Datas
local npcs = Q40226ClientConfig.Npcs
local points = Q40226ClientConfig.Points

function Q4022602Trigger:OnPostDataPrepare()
    print("Q4022602Trigger - OnPostDataPrepare")
    this = self
end

function Q4022602Trigger:OnPostComponentPrepare()
    print("Q4022602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40226)
end

function Q4022602Trigger:TriggerIn()
    print("Q4022602Trigger - TriggerIn")
    actorMgr:GetActor("40226"):TransmitPlayerWithQuestIdByData(4022602, 8, datas.TransmitData_BlackScreen, nil, nil, nil)
    this:DestroySelf()
end

function Q4022602Trigger:PreTriggerIn()
    print("Q4022602Trigger - PreTriggerIn")
end

function Q4022602Trigger:LightUpTriggerIn()
    print("Q4022602Trigger - LightUpTriggerIn")
end

function Q4022602Trigger:TriggerOut()
    print("Q4022602Trigger - TriggerOut")
end

return Q4022602Trigger
