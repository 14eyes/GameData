require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302511Trigger = class("Q2302511Trigger", GadgetActorProxy)
Q2302511Trigger.defaultAlias = "Q2302511Trigger"
local Q23025ClientConfig = require("Quest/Client/Q23025ClientConfig")

local subIDs = Q23025ClientConfig.SubIDs
local npcs = Q23025ClientConfig.Npcs
local datas = Q23025ClientConfig.Datas

function Q2302511Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302511Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302511Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23025"):NarratorOnlyTask(datas.NarratorTable11, nil, "")
    self:DestroySelf()
end

function Q2302511Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302511Trigger
