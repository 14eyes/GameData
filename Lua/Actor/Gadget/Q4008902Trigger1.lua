require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008902Trigger1 = class("Q4008902Trigger1", GadgetActorProxy)
Q4008902Trigger1.defaultAlias = "Q4008902Trigger1"
local Q40089ClientConfig = require("Quest/Client/Q40089ClientConfig")

local this
local subIDs = Q40089ClientConfig.SubIDs
local npcs = Q40089ClientConfig.Npcs
local datas = Q40089ClientConfig.Datas

function Q4008902Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4008902Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008902Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40089"):RequestInteraction(npcs.Npc1047Data.alias)
    this:DestroySelf()
end

function Q4008902Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q4008902Trigger1
