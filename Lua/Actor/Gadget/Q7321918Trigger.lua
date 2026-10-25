require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321918Trigger = class("Q7321918Trigger", GadgetActorProxy)
Q7321918Trigger.defaultAlias = "Q7321918Trigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321918Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321918Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 20, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321918Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7321918)
    actorMgr:GetActor("73219"):NarratorOnlyTaskByData(datas.Narrator_7321909)
    this:DestroySelf()
end

function Q7321918Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321918Trigger
