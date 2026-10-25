require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19083Trigger3 = class("Q19083Trigger3", GadgetActorProxy)
Q19083Trigger3.defaultAlias = "Q19083Trigger3"
local Q19083ClientConfig = require("Quest/Client/Q19083ClientConfig")

local this
local subIDs = Q19083ClientConfig.SubIDs
local npcs = Q19083ClientConfig.Npcs
local datas = Q19083ClientConfig.Datas

function Q19083Trigger3:OnPostDataPrepare()
    print("[MainId: 19083][Trigger: Q19083Trigger3] OnPostDataPrepare")
    this = self
end

function Q19083Trigger3:OnPostComponentPrepare()
    print("[MainId: 19083][Trigger: Q19083Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19083Trigger3:TriggerIn()
    print("[MainId: 19083][Trigger: Q19083Trigger3] TriggerIn")
    actorMgr:GetActor(ActorAlias):FinishQuestID(false, 1908303)
    self:DestroySelf()
end

function Q19083Trigger3:TriggerOut()
    print("[MainId: 19083][Trigger: Q19083Trigger3] TriggerOut")
end

return Q19083Trigger3
