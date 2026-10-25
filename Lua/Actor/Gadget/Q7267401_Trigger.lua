require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7267401_Trigger = class("Q7267401_Trigger", GadgetActorProxy)
Q7267401_Trigger.defaultAlias = "Q7267401_Trigger"
local Q72674ClientConfig = require("Quest/Client/Q72674ClientConfig")

local subIDs = Q72674ClientConfig.SubIDs
local npcs = Q72674ClientConfig.Npcs
local datas = Q72674ClientConfig.Datas

function Q7267401_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7267401_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7267401_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72674"):NarratorOnlyTask(datas.Narrator_Q7267401_Trigger, nil, "")
    self:DestroySelf()
end

function Q7267401_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7267401_Trigger
