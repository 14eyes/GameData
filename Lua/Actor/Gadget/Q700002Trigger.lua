require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700002Trigger = class("Q700002Trigger", GadgetActorProxy)
Q700002Trigger.defaultAlias = "Q700002Trigger"
local Q70000ClientConfig = require("Quest/Client/Q70000ClientConfig")

local mainID = Q70000ClientConfig.MainID
local actorAlias = Q70000ClientConfig.ActorAlias
local subIDs = Q70000ClientConfig.SubIDs
local npcs = Q70000ClientConfig.Npcs
local datas = Q70000ClientConfig.Datas

function Q700002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q700002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q700002Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorTable2, nil, "StoryCut")
    self:DestroySelf()
end

function Q700002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q700002Trigger
