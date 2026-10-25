require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7103505Trigger = class("Q7103505Trigger", GadgetActorProxy)
Q7103505Trigger.defaultAlias = "Q7103505Trigger"
local Q71035ClientConfig = require("Quest/Client/Q71035ClientConfig")

local subIDs = Q71035ClientConfig.SubIDs
local npcs = Q71035ClientConfig.Npcs
local datas = Q71035ClientConfig.Datas

function Q7103505Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7103505Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7103505Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(Q71035ClientConfig.ActorAlias):GetQuestNpcActor(npcs.Npc12326Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Q7103505Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7103505Trigger
