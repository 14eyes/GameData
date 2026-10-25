require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701510Trigger_1 = class("Q701510Trigger_1", GadgetActorProxy)
Q701510Trigger_1.defaultAlias = "Q701510Trigger_1"
local Q7015ClientConfig = require("Quest/Client/Q7015ClientConfig")

local this
local subIDs = Q7015ClientConfig.SubIDs
local datas = Q7015ClientConfig.Datas
local npcs = Q7015ClientConfig.Npcs
local points = Q7015ClientConfig.Points

function Q701510Trigger_1:OnPostDataPrepare()
    print("Q701510Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q701510Trigger_1:OnPostComponentPrepare()
    print("Q701510Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7015)
end

function Q701510Trigger_1:TriggerIn()
    print("Q701510Trigger_1 - TriggerIn")
    actorMgr:GetActor("7015"):TransmitPlayerByQuestId(701510, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q701510Trigger_1:PreTriggerIn()
    print("Q701510Trigger_1 - PreTriggerIn")
end

function Q701510Trigger_1:LightUpTriggerIn()
    print("Q701510Trigger_1 - LightUpTriggerIn")
end

function Q701510Trigger_1:TriggerOut()
    print("Q701510Trigger_1 - TriggerOut")
end

return Q701510Trigger_1
