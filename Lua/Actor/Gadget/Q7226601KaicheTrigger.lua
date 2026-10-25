require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226601KaicheTrigger = class("Q7226601KaicheTrigger", GadgetActorProxy)
Q7226601KaicheTrigger.defaultAlias = "Q7226601KaicheTrigger"
local Q72266ClientConfig = require("Quest/Client/Q72266ClientConfig")

local subIDs = Q72266ClientConfig.SubIDs
local npcs = Q72266ClientConfig.Npcs
local datas = Q72266ClientConfig.Datas

function Q7226601KaicheTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226601KaicheTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226601KaicheTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72266"):NarratorOnlyTask(datas.Q7226601KaichePaimon, nil, "")
    self:DestroySelf()
end

function Q7226601KaicheTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7226601KaicheTrigger
