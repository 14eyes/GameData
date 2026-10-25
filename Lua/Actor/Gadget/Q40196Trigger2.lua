require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40196Trigger2 = class("Q40196Trigger2", GadgetActorProxy)
Q40196Trigger2.defaultAlias = "Q40196Trigger2"
local Q40196ClientConfig = require("Quest/Client/Q40196ClientConfig")

local this
local subIDs = Q40196ClientConfig.SubIDs
local datas = Q40196ClientConfig.Datas
local npcs = Q40196ClientConfig.Npcs
local points = Q40196ClientConfig.Points

function Q40196Trigger2:OnPostDataPrepare()
    print("Q40196Trigger2 - OnPostDataPrepare")
    this = self
end

function Q40196Trigger2:OnPostComponentPrepare()
    print("Q40196Trigger2 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40196)
end

function Q40196Trigger2:TriggerIn()
    print("Q40196Trigger2 - TriggerIn")
    actorMgr:GetActor("40196"):CreateQuestNpcById(4019605, npcs.Npc15174.id, 0, false, 0)
    actorMgr:GetActor("40196"):RequestInteraction(npcs.Npc15174.alias, "", true)
    this:DestroySelf()
end

function Q40196Trigger2:PreTriggerIn()
    print("Q40196Trigger2 - PreTriggerIn")
end

function Q40196Trigger2:LightUpTriggerIn()
    print("Q40196Trigger2 - LightUpTriggerIn")
end

function Q40196Trigger2:TriggerOut()
    print("Q40196Trigger2 - TriggerOut")
end

return Q40196Trigger2
