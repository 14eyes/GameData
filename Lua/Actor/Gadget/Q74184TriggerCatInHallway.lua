require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74184TriggerCatInHallway = class("Q74184TriggerCatInHallway", GadgetActorProxy)
Q74184TriggerCatInHallway.defaultAlias = "Q74184TriggerCatInHallway"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q74184TriggerCatInHallway:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q74184TriggerCatInHallway] OnPostDataPrepare")
    this = self
end

function Q74184TriggerCatInHallway:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q74184TriggerCatInHallway] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30.85549, 21.75865, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74184TriggerCatInHallway:TriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerCatInHallway] TriggerIn")
    local actor = actorMgr:GetActor("74184")
    actor:CancelStoryByQuest(147418402)
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc21338Data.alias)
    questNpcActor:DoFreeStyle(15, true, nil, true, true, false, false)
    questNpcActor:DestroyWithDitherEx(0.5)
    actorUtils.FinishQuestID(false, 7418429)
    this:DestroySelf()
end

function Q74184TriggerCatInHallway:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerCatInHallway] PreTriggerIn")
end

function Q74184TriggerCatInHallway:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerCatInHallway] LightUpTriggerIn")
end

function Q74184TriggerCatInHallway:TriggerOut()
    print("[MainId: 74184][Trigger: Q74184TriggerCatInHallway] TriggerOut")
end

return Q74184TriggerCatInHallway
