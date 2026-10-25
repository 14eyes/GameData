require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3009DinaDiciaTrigger = class("Q3009DinaDiciaTrigger", GadgetActorProxy)
Q3009DinaDiciaTrigger.defaultAlias = "Q3009DinaDiciaTrigger"
local Q3009ClientConfig = require("Quest/Client/Q3009ClientConfig")

local subIDs = Q3009ClientConfig.SubIDs
local npcs = Q3009ClientConfig.Npcs
local datas = Q3009ClientConfig.Datas

function Q3009DinaDiciaTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3009DinaDiciaTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(11, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3009DinaDiciaTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3009"):RequestInteraction(npcs.Npc1052Data.alias)
    self:DestroySelf()
end

function Q3009DinaDiciaTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3009DinaDiciaTrigger
