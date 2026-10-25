require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321917sTrigger = class("Q7321917sTrigger", GadgetActorProxy)
Q7321917sTrigger.defaultAlias = "Q7321917sTrigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321917sTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7321917sTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321917sTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73219"):NarratorOnlyTaskByData(datas.Narrator_7321908)
    self:DestroySelf()
end

function Q7321917sTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7321917sTrigger
