require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7526003Trigger = class("Q7526003Trigger", GadgetActorProxy)
Q7526003Trigger.defaultAlias = "Q7526003Trigger"
local Q75260ClientConfig = require("Quest/Client/Q75260ClientConfig")

local this
local subIDs = Q75260ClientConfig.SubIDs
local datas = Q75260ClientConfig.Datas
local npcs = Q75260ClientConfig.Npcs
local points = Q75260ClientConfig.Points

function Q7526003Trigger:OnPostDataPrepare()
    print("Q7526003Trigger - OnPostDataPrepare")
    this = self
end

function Q7526003Trigger:OnPostComponentPrepare()
    print("Q7526003Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75260)
end

function Q7526003Trigger:TriggerIn()
    print("Q7526003Trigger - TriggerIn")
    actorMgr:GetActor("75260"):TransmitPlayerWithQuestIdByData(7526003, 1, datas.TransmitData, nil, nil, nil)
    actorMgr:GetActor("75260"):CreateQuestNpcWithTrigger("Q7526003N6557", 7526003, npcs.Npc6557.id, 0, 20, 2)
    this:DestroySelf()
end

function Q7526003Trigger:PreTriggerIn()
    print("Q7526003Trigger - PreTriggerIn")
end

function Q7526003Trigger:LightUpTriggerIn()
    print("Q7526003Trigger - LightUpTriggerIn")
end

function Q7526003Trigger:TriggerOut()
    print("Q7526003Trigger - TriggerOut")
end

return Q7526003Trigger
