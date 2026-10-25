require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7526005Trigger = class("Q7526005Trigger", GadgetActorProxy)
Q7526005Trigger.defaultAlias = "Q7526005Trigger"
local Q75260ClientConfig = require("Quest/Client/Q75260ClientConfig")

local this
local subIDs = Q75260ClientConfig.SubIDs
local datas = Q75260ClientConfig.Datas
local npcs = Q75260ClientConfig.Npcs
local points = Q75260ClientConfig.Points

function Q7526005Trigger:OnPostDataPrepare()
    print("Q7526005Trigger - OnPostDataPrepare")
    this = self
end

function Q7526005Trigger:OnPostComponentPrepare()
    print("Q7526005Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75260)
end

function Q7526005Trigger:TriggerIn()
    print("Q7526005Trigger - TriggerIn")
    actorMgr:GetActor("75260"):TransmitPlayerWithQuestIdByData(7526005, 1, datas.TransmitData, nil, nil, nil)
    actorMgr:GetActor("75260"):CreateQuestNpcWithTrigger("Q7526003N6557", 7526005, npcs.Npc6557.id, 0, 20, 2)
    this:DestroySelf()
end

function Q7526005Trigger:PreTriggerIn()
    print("Q7526005Trigger - PreTriggerIn")
end

function Q7526005Trigger:LightUpTriggerIn()
    print("Q7526005Trigger - LightUpTriggerIn")
end

function Q7526005Trigger:TriggerOut()
    print("Q7526005Trigger - TriggerOut")
end

return Q7526005Trigger
