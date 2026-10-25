require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4001405Trigger = class("Q4001405Trigger", GadgetActorProxy)
Q4001405Trigger.defaultAlias = "Q4001405Trigger"
local Q40014ClientConfig = require("Quest/Client/Q40014ClientConfig")

local mainID = Q40014ClientConfig.MainID
local actorAlias = Q40014ClientConfig.ActorAlias
local subIDs = Q40014ClientConfig.SubIDs
local npcs = Q40014ClientConfig.Npcs
local gadgets = Q40014ClientConfig.Gadgets
local datas = Q40014ClientConfig.Datas

function Q4001405Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4001405Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4001405Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc1016Data.alias)
    self:DestroySelf()
end

function Q4001405Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4001405Trigger
