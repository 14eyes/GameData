require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40091Trigger2 = class("Q40091Trigger2", GadgetActorProxy)
Q40091Trigger2.defaultAlias = "Q40091Trigger2"
local Q40091ClientConfig = require("Quest/Client/Q40091ClientConfig")

local this
local subIDs = Q40091ClientConfig.SubIDs
local npcs = Q40091ClientConfig.Npcs
local datas = Q40091ClientConfig.Datas

function Q40091Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40091Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(120, 250, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40091Trigger2:TriggerIn()
    print("TriggerIn")
end

function Q40091Trigger2:PreTriggerIn()
    print("PreTriggerIn")
end

function Q40091Trigger2:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q40091Trigger2:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("40091")
    actor:DestroyQuestNpcActor(npcs.Npc1035Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc1044Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc1047Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc1034Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc1039Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc1013Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc1057Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc1032Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc1033Data.alias, 3)
    actor:DestroyQuestNpcActor(npcs.Npc1040Data.alias, 3)
    this:DestroySelf()
end

return Q40091Trigger2
