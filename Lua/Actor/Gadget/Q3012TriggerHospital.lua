require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3012TriggerHospital = class("Q3012TriggerHospital", GadgetActorProxy)
Q3012TriggerHospital.defaultAlias = "Q3012TriggerHospital"
local Q3012ClientConfig = require("Quest/Client/Q3012ClientConfig")

local subIDs = Q3012ClientConfig.SubIDs
local npcs = Q3012ClientConfig.Npcs
local datas = Q3012ClientConfig.Datas

function Q3012TriggerHospital:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3012TriggerHospital:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3012TriggerHospital:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3012"):RequestInteraction(npcs.Npc12555Data.alias)
    self:DestroySelf()
end

function Q3012TriggerHospital:TriggerOut()
    print("TriggerOut")
end

return Q3012TriggerHospital
