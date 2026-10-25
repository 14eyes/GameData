require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19041Trigger = class("Q19041Trigger", GadgetActorProxy)
Q19041Trigger.defaultAlias = "Q19041Trigger"
local Q19041ClientConfig = require("Quest/Client/Q19041ClientConfig")

local mainID = Q19041ClientConfig.MainID
local actorAlias = Q19041ClientConfig.ActorAlias
local subIDs = Q19041ClientConfig.SubIDs
local npcs = Q19041ClientConfig.Npcs
local datas = Q19041ClientConfig.Datas

function Q19041Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19041Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19041Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc1024Data.alias)
end

function Q19041Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19041Trigger
