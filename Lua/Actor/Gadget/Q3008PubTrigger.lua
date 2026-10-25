require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3008PubTrigger = class("Q3008PubTrigger", GadgetActorProxy)
Q3008PubTrigger.defaultAlias = "Q3008PubTrigger"
local Q3008ClientConfig = require("Quest/Client/Q3008ClientConfig")

local subIDs = Q3008ClientConfig.SubIDs
local npcs = Q3008ClientConfig.Npcs
local datas = Q3008ClientConfig.Datas

function Q3008PubTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3008PubTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3008PubTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3008"):RequestInteraction(npcs.Npc4030Data.alias)
    self:DestroySelf()
end

function Q3008PubTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3008PubTrigger
