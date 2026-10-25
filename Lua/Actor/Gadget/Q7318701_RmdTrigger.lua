require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318701_RmdTrigger = class("Q7318701_RmdTrigger", GadgetActorProxy)
Q7318701_RmdTrigger.defaultAlias = "Q7318701_RmdTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318701_RmdTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7318701_RmdTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318701_RmdTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73187"):NarratorOnlyTaskByData(datas.Narrator_01, nil, 73187)
    self:DestroySelf()
end

function Q7318701_RmdTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318701_RmdTrigger
