require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19083Trigger1 = class("Q19083Trigger1", GadgetActorProxy)
Q19083Trigger1.defaultAlias = "Q19083Trigger1"
local Q19083ClientConfig = require("Quest/Client/Q19083ClientConfig")

local this
local subIDs = Q19083ClientConfig.SubIDs
local npcs = Q19083ClientConfig.Npcs
local datas = Q19083ClientConfig.Datas

function Q19083Trigger1:OnPostDataPrepare()
    print("[MainId: 19083][Trigger: Q19083Trigger1] OnPostDataPrepare")
    this = self
end

function Q19083Trigger1:OnPostComponentPrepare()
    print("[MainId: 19083][Trigger: Q19083Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19083Trigger1:TriggerIn()
    print("[MainId: 19083][Trigger: Q19083Trigger1] TriggerIn")
    actorMgr:GetActor(ActorAlias):FinishQuestID(false, 1908301)
    self:DestroySelf()
end

function Q19083Trigger1:TriggerOut()
    print("[MainId: 19083][Trigger: Q19083Trigger1] TriggerOut")
end

return Q19083Trigger1
