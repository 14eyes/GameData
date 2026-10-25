require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007TriggerMorningMet = class("Q3007TriggerMorningMet", GadgetActorProxy)
Q3007TriggerMorningMet.defaultAlias = "Q3007TriggerMorningMet"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007TriggerMorningMet:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007TriggerMorningMet:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007TriggerMorningMet:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3007"):RequestInteraction(npcs.Npc12555Data.alias)
    self:DestroySelf()
end

function Q3007TriggerMorningMet:TriggerOut()
    print("TriggerOut")
end

return Q3007TriggerMorningMet
