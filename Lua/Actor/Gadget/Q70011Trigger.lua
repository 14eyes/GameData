require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70011Trigger = class("Q70011Trigger", GadgetActorProxy)
Q70011Trigger.defaultAlias = "Q70011Trigger"
local Q70011ClientConfig = require("Quest/Client/Q70011ClientConfig")

local mainID = Q70011ClientConfig.MainID
local actorAlias = Q70011ClientConfig.ActorAlias
local subIDs = Q70011ClientConfig.SubIDs
local npcs = Q70011ClientConfig.Npcs
local datas = Q70011ClientConfig.Datas

function Q70011Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70011Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70011Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q70011Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70011Trigger
