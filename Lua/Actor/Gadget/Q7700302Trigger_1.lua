require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700302Trigger_1 = class("Q7700302Trigger_1", GadgetActorProxy)
Q7700302Trigger_1.defaultAlias = "Q7700302Trigger_1"
local Q77003ClientConfig = require("Quest/Client/Q77003ClientConfig")

local this
local subIDs = Q77003ClientConfig.SubIDs
local datas = Q77003ClientConfig.Datas
local npcs = Q77003ClientConfig.Npcs
local points = Q77003ClientConfig.Points

function Q7700302Trigger_1:OnPostDataPrepare()
    print("Q7700302Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7700302Trigger_1:OnPostComponentPrepare()
    print("Q7700302Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77003)
end

function Q7700302Trigger_1:TriggerIn()
    print("Q7700302Trigger_1 - TriggerIn")
    actorMgr:GetActor("77003"):TransmitPlayerWithQuestIdByData(7700302, 1, datas.TransmitData_5, nil, nil, nil)
    this:DestroySelf()
end

function Q7700302Trigger_1:PreTriggerIn()
    print("Q7700302Trigger_1 - PreTriggerIn")
end

function Q7700302Trigger_1:LightUpTriggerIn()
    print("Q7700302Trigger_1 - LightUpTriggerIn")
end

function Q7700302Trigger_1:TriggerOut()
    print("Q7700302Trigger_1 - TriggerOut")
end

return Q7700302Trigger_1
