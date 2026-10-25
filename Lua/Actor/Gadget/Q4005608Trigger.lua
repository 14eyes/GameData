require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005608Trigger = class("Q4005608Trigger", GadgetActorProxy)
Q4005608Trigger.defaultAlias = "Q4005608Trigger"
local Q40056ClientConfig = require("Quest/Client/Q40056ClientConfig")

local subIDs = Q40056ClientConfig.SubIDs
local npcs = Q40056ClientConfig.Npcs
local datas = Q40056ClientConfig.Datas

function Q4005608Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005608Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005608Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40056"):RequestInteraction(npcs.Npc1038Data.alias)
    self:DestroySelf()
end

function Q4005608Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005608Trigger
