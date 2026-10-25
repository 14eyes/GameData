require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11008Trigger1 = class("Q11008Trigger1", GadgetActorProxy)
Q11008Trigger1.defaultAlias = "Q11008Trigger1"
local Q11008ClientConfig = require("Quest/Client/Q11008ClientConfig")

local subIDs = Q11008ClientConfig.SubIDs
local npcs = Q11008ClientConfig.Npcs
local gadgets = Q11008ClientConfig.Gadgets
local datas = Q11008ClientConfig.Datas

function Q11008Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11008Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11008Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11008"):RequestInteraction(npcs.Npc2093Data.alias)
    self:DestroySelf()
end

function Q11008Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q11008Trigger1
