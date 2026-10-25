require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914808Trigger = class("Q1914808Trigger", GadgetActorProxy)
Q1914808Trigger.defaultAlias = "Q1914808Trigger"
local Q19148ClientConfig = require("Quest/Client/Q19148ClientConfig")

local subIDs = Q19148ClientConfig.SubIDs
local npcs = Q19148ClientConfig.Npcs
local datas = Q19148ClientConfig.Datas

function Q1914808Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914808Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914808Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1914808)
    self:DestroySelf()
end

function Q1914808Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914808Trigger
