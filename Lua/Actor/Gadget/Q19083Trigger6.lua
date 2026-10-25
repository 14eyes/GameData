require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19083Trigger6 = class("Q19083Trigger6", GadgetActorProxy)
Q19083Trigger6.defaultAlias = "Q19083Trigger6"
local Q19083ClientConfig = require("Quest/Client/Q19083ClientConfig")

local this
local subIDs = Q19083ClientConfig.SubIDs
local npcs = Q19083ClientConfig.Npcs
local datas = Q19083ClientConfig.Datas

function Q19083Trigger6:OnPostDataPrepare()
    print("[MainId: 19083][Trigger: Q19083Trigger6] OnPostDataPrepare")
    this = self
end

function Q19083Trigger6:OnPostComponentPrepare()
    print("[MainId: 19083][Trigger: Q19083Trigger6] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19083Trigger6:TriggerIn()
    print("[MainId: 19083][Trigger: Q19083Trigger6] TriggerIn")
end

function Q19083Trigger6:TriggerOut()
    print("[MainId: 19083][Trigger: Q19083Trigger6] TriggerOut")
    actorMgr:GetActor(ActorAlias):FinishQuestID(true, 1908306)
    self:DestroySelf()
end

return Q19083Trigger6
