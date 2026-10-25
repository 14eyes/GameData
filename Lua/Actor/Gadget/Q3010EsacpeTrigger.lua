require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3010EsacpeTrigger = class("Q3010EsacpeTrigger", GadgetActorProxy)
Q3010EsacpeTrigger.defaultAlias = "Q3010EsacpeTrigger"
local Q3010ClientConfig = require("Quest/Client/Q3010ClientConfig")

local subIDs = Q3010ClientConfig.SubIDs
local npcs = Q3010ClientConfig.Npcs
local datas = Q3010ClientConfig.Datas

function Q3010EsacpeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3010EsacpeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3010EsacpeTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3010"):RequestInteraction(npcs.Npc1052Data.alias)
    self:DestroySelf()
end

function Q3010EsacpeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3010EsacpeTrigger
