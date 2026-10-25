require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600214Trigger_1 = class("Q600214Trigger_1", GadgetActorProxy)
Q600214Trigger_1.defaultAlias = "Q600214Trigger_1"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600214Trigger_1:OnPostDataPrepare()
    print("Q600214Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q600214Trigger_1:OnPostComponentPrepare()
    print("Q600214Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600214Trigger_1:TriggerIn()
    print("Q600214Trigger_1 - TriggerIn")
    actorMgr:GetActor("6002"):TransmitPlayerWithQuestIdByData(600214, 1, datas.TransmitData_600231, nil, nil, nil)
    this:DestroySelf()
end

function Q600214Trigger_1:PreTriggerIn()
    print("Q600214Trigger_1 - PreTriggerIn")
end

function Q600214Trigger_1:LightUpTriggerIn()
    print("Q600214Trigger_1 - LightUpTriggerIn")
end

function Q600214Trigger_1:TriggerOut()
    print("Q600214Trigger_1 - TriggerOut")
end

return Q600214Trigger_1
