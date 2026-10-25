require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70016Trigger = class("Q70016Trigger", GadgetActorProxy)
Q70016Trigger.defaultAlias = "Q70016Trigger"
local Q70016ClientConfig = require("Quest/Client/Q70016ClientConfig")

local mainID = Q70016ClientConfig.MainID
local actorAlias = Q70016ClientConfig.ActorAlias
local subIDs = Q70016ClientConfig.SubIDs
local npcs = Q70016ClientConfig.Npcs
local datas = Q70016ClientConfig.Datas

function Q70016Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70016Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70016Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q70016Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70016Trigger
