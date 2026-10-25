require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004715Trigger = class("Q4004715Trigger", GadgetActorProxy)
Q4004715Trigger.defaultAlias = "Q4004715Trigger"
local Q40047ClientConfig = require("Quest/Client/Q40047ClientConfig")

local subIDs = Q40047ClientConfig.SubIDs
local npcs = Q40047ClientConfig.Npcs
local datas = Q40047ClientConfig.Datas

function Q4004715Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004715Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004715Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40047"):RequestInteraction(npcs.Npc30000Data.alias)
    self:DestroySelf()
end

function Q4004715Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004715Trigger
