require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_26 = class("Q40211Trigger_26", GadgetActorProxy)
Q40211Trigger_26.defaultAlias = "Q40211Trigger_26"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_26:OnPostDataPrepare()
    print("Q40211Trigger_26 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_26:OnPostComponentPrepare()
    print("Q40211Trigger_26 - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_26:TriggerIn()
    print("Q40211Trigger_26 - TriggerIn")
end

function Q40211Trigger_26:PreTriggerIn()
    print("Q40211Trigger_26 - PreTriggerIn")
end

function Q40211Trigger_26:LightUpTriggerIn()
    print("Q40211Trigger_26 - LightUpTriggerIn")
end

function Q40211Trigger_26:TriggerOut()
    print("Q40211Trigger_26 - TriggerOut")
    actorMgr:GetActor("40211"):DestroyQuestNpcActor(npcs.Npc4476.alias, 3)
    actorMgr:GetActor("40211"):DestroyQuestNpcActor(npcs.Npc15978.alias, 3)
    actorMgr:GetActor("40211"):DestroyQuestNpcActor(npcs.Npc15979.alias, 3)
    this:DestroySelf()
end

return Q40211Trigger_26
