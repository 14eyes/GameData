require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40027Trigger = class("Q40027Trigger", GadgetActorProxy)
Q40027Trigger.defaultAlias = "Q40027Trigger"
local Q40027ClientConfig = require("Quest/Client/Q40027ClientConfig")

local subIDs = Q40027ClientConfig.SubIDs
local npcs = Q40027ClientConfig.Npcs
local gadgets = Q40027ClientConfig.Gadgets
local datas = Q40027ClientConfig.Datas

function Q40027Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40027Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40027Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40027"):RequestInteraction(npcs.Npc1018Data.alias)
    self:DestroySelf()
end

function Q40027Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40027Trigger
