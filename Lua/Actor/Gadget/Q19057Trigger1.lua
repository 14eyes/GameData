require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19057Trigger1 = class("Q19057Trigger1", GadgetActorProxy)
Q19057Trigger1.defaultAlias = "Q19057Trigger1"
local Q19057ClientConfig = require("Quest/Client/Q19057ClientConfig")

local subIDs = Q19057ClientConfig.SubIDs
local npcs = Q19057ClientConfig.Npcs
local datas = Q19057ClientConfig.Datas

function Q19057Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19057Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19057Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1905708)
    self:DestroySelf()
end

function Q19057Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19057Trigger1
