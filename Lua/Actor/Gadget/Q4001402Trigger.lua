require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4001402Trigger = class("Q4001402Trigger", GadgetActorProxy)
Q4001402Trigger.defaultAlias = "Q4001402Trigger"
local Q40014ClientConfig = require("Quest/Client/Q40014ClientConfig")

local mainID = Q40014ClientConfig.MainID
local actorAlias = Q40014ClientConfig.ActorAlias
local subIDs = Q40014ClientConfig.SubIDs
local npcs = Q40014ClientConfig.Npcs
local gadgets = Q40014ClientConfig.Gadgets
local datas = Q40014ClientConfig.Datas

function Q4001402Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4001402Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4001402Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc1021Data.alias)
    self:DestroySelf()
end

function Q4001402Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4001402Trigger
