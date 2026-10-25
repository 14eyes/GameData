require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302002Kaiche = class("Q302002Kaiche", GadgetActorProxy)
Q302002Kaiche.defaultAlias = "Q302002Kaiche"
local Q3020ClientConfig = require("Quest/Client/Q3020ClientConfig")

local subIDs = Q3020ClientConfig.SubIDs
local npcs = Q3020ClientConfig.Npcs
local datas = Q3020ClientConfig.Datas

function Q302002Kaiche:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302002Kaiche:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302002Kaiche:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3020"):NarratorOnlyTaskByData(datas.YiyuanKaiche)
    self:DestroySelf()
end

function Q302002Kaiche:TriggerOut()
    print("TriggerOut")
end

return Q302002Kaiche
