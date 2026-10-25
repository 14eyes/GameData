require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4003108Trigger = class("Q4003108Trigger", GadgetActorProxy)
Q4003108Trigger.defaultAlias = "Q4003108Trigger"
local Q40031ClientConfig = require("Quest/Client/Q40031ClientConfig")

local subIDs = Q40031ClientConfig.SubIDs
local npcs = Q40031ClientConfig.Npcs
local datas = Q40031ClientConfig.Datas

function Q4003108Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4003108Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(90, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4003108Trigger:TriggerIn()
    print("TriggerIn")
end

function Q4003108Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("40031"):SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:DestroySelf()
end

return Q4003108Trigger
