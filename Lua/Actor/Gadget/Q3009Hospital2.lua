require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3009Hospital2 = class("Q3009Hospital2", GadgetActorProxy)
Q3009Hospital2.defaultAlias = "Q3009Hospital2"
local Q3009ClientConfig = require("Quest/Client/Q3009ClientConfig")

local subIDs = Q3009ClientConfig.SubIDs
local npcs = Q3009ClientConfig.Npcs
local datas = Q3009ClientConfig.Datas

function Q3009Hospital2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3009Hospital2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3009Hospital2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3009"):RequestInteraction(npcs.Npc1056Data.alias)
    self:DestroySelf()
end

function Q3009Hospital2:TriggerOut()
    print("TriggerOut")
end

return Q3009Hospital2
