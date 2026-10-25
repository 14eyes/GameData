require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19047Trigger1 = class("Q19047Trigger1", GadgetActorProxy)
Q19047Trigger1.defaultAlias = "Q19047Trigger1"
local Q19047ClientConfig = require("Quest/Client/Q19047ClientConfig")

local subIDs = Q19047ClientConfig.SubIDs
local npcs = Q19047ClientConfig.Npcs
local datas = Q19047ClientConfig.Datas

function Q19047Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19047Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19047Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19047"):FinishQuestID(false, 1904703)
    self:DestroySelf()
end

function Q19047Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19047Trigger1
