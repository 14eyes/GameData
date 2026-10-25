require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12021KaicheTrigger = class("Q12021KaicheTrigger", GadgetActorProxy)
Q12021KaicheTrigger.defaultAlias = "Q12021KaicheTrigger"
local Q12021ClientConfig = require("Quest/Client/Q12021ClientConfig")

local subIDs = Q12021ClientConfig.SubIDs
local npcs = Q12021ClientConfig.Npcs
local datas = Q12021ClientConfig.Datas

function Q12021KaicheTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12021KaicheTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12021KaicheTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12021"):NarratorOnlyTaskByData(datas.WalkKaiche, nil, 12021)
end

function Q12021KaicheTrigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q12021KaicheTrigger
