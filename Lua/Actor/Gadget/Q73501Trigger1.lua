require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73501Trigger1 = class("Q73501Trigger1", GadgetActorProxy)
Q73501Trigger1.defaultAlias = "Q73501Trigger1"
local Q73501ClientConfig = require("Quest/Client/Q73501ClientConfig")

local subIDs = Q73501ClientConfig.SubIDs
local npcs = Q73501ClientConfig.Npcs
local gadgets = Q73501ClientConfig.Gadgets
local datas = Q73501ClientConfig.Datas

function Q73501Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73501Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6.5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73501Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73501"):RequestInteraction(npcs.Npc4216Data.alias)
    self:DestroySelf()
end

function Q73501Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q73501Trigger1
