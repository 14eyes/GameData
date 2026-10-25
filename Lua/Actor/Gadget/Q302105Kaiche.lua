require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302105Kaiche = class("Q302105Kaiche", GadgetActorProxy)
Q302105Kaiche.defaultAlias = "Q302105Kaiche"
local Q3021ClientConfig = require("Quest/Client/Q3021ClientConfig")

local subIDs = Q3021ClientConfig.SubIDs
local npcs = Q3021ClientConfig.Npcs
local datas = Q3021ClientConfig.Datas

function Q302105Kaiche:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302105Kaiche:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302105Kaiche:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3021"):NarratorOnlyTaskByData(datas.KaidengKaiche)
    self:DestroySelf()
end

function Q302105Kaiche:TriggerOut()
    print("TriggerOut")
end

return Q302105Kaiche
