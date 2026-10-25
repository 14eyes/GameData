require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70022Trigger = class("Q70022Trigger", GadgetActorProxy)
Q70022Trigger.defaultAlias = "Q70022Trigger"
local Q70022ClientConfig = require("Quest/Client/Q70022ClientConfig")

local mainID = Q70022ClientConfig.MainID
local actorAlias = Q70022ClientConfig.ActorAlias
local subIDs = Q70022ClientConfig.SubIDs
local npcs = Q70022ClientConfig.Npcs
local datas = Q70022ClientConfig.Datas

function Q70022Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70022Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70022Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q70022Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70022Trigger
