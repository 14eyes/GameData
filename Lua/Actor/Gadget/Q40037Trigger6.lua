require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40037Trigger6 = class("Q40037Trigger6", GadgetActorProxy)
Q40037Trigger6.defaultAlias = "Q40037Trigger6"
local Q40037ClientConfig = require("Quest/Client/Q40037ClientConfig")

local subIDs = Q40037ClientConfig.SubIDs
local npcs = Q40037ClientConfig.Npcs
local gadgets = Q40037ClientConfig.Gadgets
local datas = Q40037ClientConfig.Datas

function Q40037Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40037Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(14, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40037Trigger6:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40037"):RequestInteraction(npcs.Npc30092Data.alias)
    self:DestroySelf()
end

function Q40037Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q40037Trigger6
