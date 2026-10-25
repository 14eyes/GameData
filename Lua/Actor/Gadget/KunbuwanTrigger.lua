require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local KunbuwanTrigger = class("KunbuwanTrigger", GadgetActorProxy)
KunbuwanTrigger.defaultAlias = "KunbuwanTrigger"
local Q72210ClientConfig = require("Quest/Client/Q72210ClientConfig")

local subIDs = Q72210ClientConfig.SubIDs
local npcs = Q72210ClientConfig.Npcs
local datas = Q72210ClientConfig.Datas

function KunbuwanTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function KunbuwanTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function KunbuwanTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72210"):NarratorOnlyTask(datas.Pm02, nil, "")
    self:DestroySelf()
end

function KunbuwanTrigger:TriggerOut()
    print("TriggerOut")
end

return KunbuwanTrigger
