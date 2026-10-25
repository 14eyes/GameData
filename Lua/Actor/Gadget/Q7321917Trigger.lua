require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321917Trigger = class("Q7321917Trigger", GadgetActorProxy)
Q7321917Trigger.defaultAlias = "Q7321917Trigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321917Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321917Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 30, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321917Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7321917)
    actorMgr:GetActor("73219"):NarratorOnlyTaskByData(datas.Narrator_7321916)
    this:DestroySelf()
end

function Q7321917Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321917Trigger
