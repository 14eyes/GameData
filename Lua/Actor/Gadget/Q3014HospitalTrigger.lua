require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3014HospitalTrigger = class("Q3014HospitalTrigger", GadgetActorProxy)
Q3014HospitalTrigger.defaultAlias = "Q3014HospitalTrigger"
local Q3014ClientConfig = require("Quest/Client/Q3014ClientConfig")

local subIDs = Q3014ClientConfig.SubIDs
local npcs = Q3014ClientConfig.Npcs
local datas = Q3014ClientConfig.Datas

function Q3014HospitalTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3014HospitalTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3014HospitalTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3014"):RequestInteraction(npcs.Npc1056Data.alias)
    self:DestroySelf()
end

function Q3014HospitalTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3014HospitalTrigger
