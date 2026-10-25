require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006503_Trigger = class("Q4006503_Trigger", GadgetActorProxy)
Q4006503_Trigger.defaultAlias = "Q4006503_Trigger"
local Q40065ClientConfig = require("Quest/Client/Q40065ClientConfig")

local subIDs = Q40065ClientConfig.SubIDs
local npcs = Q40065ClientConfig.Npcs
local gadgets = Q40065ClientConfig.Gadgets
local datas = Q40065ClientConfig.Datas

function Q4006503_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006503_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006503_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40065"):RequestInteraction(npcs.Npc1042Data.alias)
    self:DestroySelf()
end

function Q4006503_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006503_Trigger
