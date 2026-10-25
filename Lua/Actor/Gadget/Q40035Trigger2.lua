require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40035Trigger2 = class("Q40035Trigger2", GadgetActorProxy)
Q40035Trigger2.defaultAlias = "Q40035Trigger2"
local Q40035ClientConfig = require("Quest/Client/Q40035ClientConfig")

local subIDs = Q40035ClientConfig.SubIDs
local npcs = Q40035ClientConfig.Npcs
local datas = Q40035ClientConfig.Datas

function Q40035Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40035Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40035Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40035"):RequestInteraction(npcs.Npc1016Data.alias)
    self:DestroySelf()
end

function Q40035Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q40035Trigger2
