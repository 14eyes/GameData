require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40037Trigger5 = class("Q40037Trigger5", GadgetActorProxy)
Q40037Trigger5.defaultAlias = "Q40037Trigger5"
local Q40037ClientConfig = require("Quest/Client/Q40037ClientConfig")

local subIDs = Q40037ClientConfig.SubIDs
local npcs = Q40037ClientConfig.Npcs
local gadgets = Q40037ClientConfig.Gadgets
local datas = Q40037ClientConfig.Datas

function Q40037Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40037Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40037Trigger5:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40037"):RequestInteraction(npcs.Npc10045Data.alias)
    self:DestroySelf()
end

function Q40037Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q40037Trigger5
