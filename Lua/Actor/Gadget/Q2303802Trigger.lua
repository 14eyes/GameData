require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2303802Trigger = class("Q2303802Trigger", GadgetActorProxy)
Q2303802Trigger.defaultAlias = "Q2303802Trigger"
local Q23038ClientConfig = require("Quest/Client/Q23038ClientConfig")

local subIDs = Q23038ClientConfig.SubIDs
local npcs = Q23038ClientConfig.Npcs
local datas = Q23038ClientConfig.Datas

function Q2303802Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2303802Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2303802Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23038"):NarratorOnlyTaskByData(datas.Narrator_230389901)
    self:DestroySelf()
end

function Q2303802Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2303802Trigger
