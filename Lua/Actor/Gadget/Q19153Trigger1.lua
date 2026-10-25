require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19153Trigger1 = class("Q19153Trigger1", GadgetActorProxy)
Q19153Trigger1.defaultAlias = "Q19153Trigger1"
local Q19153ClientConfig = require("Quest/Client/Q19153ClientConfig")

local this
local subIDs = Q19153ClientConfig.SubIDs
local npcs = Q19153ClientConfig.Npcs
local datas = Q19153ClientConfig.Datas

function Q19153Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19153Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19153Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1915304)
    this:DestroySelf()
end

function Q19153Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19153Trigger1
