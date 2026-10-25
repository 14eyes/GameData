require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022502Trigger = class("Q4022502Trigger", GadgetActorProxy)
Q4022502Trigger.defaultAlias = "Q4022502Trigger"
local Q40225ClientConfig = require("Quest/Client/Q40225ClientConfig")

local this
local subIDs = Q40225ClientConfig.SubIDs
local datas = Q40225ClientConfig.Datas
local npcs = Q40225ClientConfig.Npcs
local points = Q40225ClientConfig.Points

function Q4022502Trigger:OnPostDataPrepare()
    print("Q4022502Trigger - OnPostDataPrepare")
    this = self
end

function Q4022502Trigger:OnPostComponentPrepare()
    print("Q4022502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40225)
end

function Q4022502Trigger:TriggerIn()
    print("Q4022502Trigger - TriggerIn")
    actorMgr:GetActor("40225"):TransmitPlayerWithQuestIdByData(4022502, 7, datas.TransmitData_BlackScreen, nil, nil, nil)
    this:DestroySelf()
end

function Q4022502Trigger:PreTriggerIn()
    print("Q4022502Trigger - PreTriggerIn")
end

function Q4022502Trigger:LightUpTriggerIn()
    print("Q4022502Trigger - LightUpTriggerIn")
end

function Q4022502Trigger:TriggerOut()
    print("Q4022502Trigger - TriggerOut")
end

return Q4022502Trigger
