require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323501Trigger = class("Q7323501Trigger", GadgetActorProxy)
Q7323501Trigger.defaultAlias = "Q7323501Trigger"
local Q73235ClientConfig = require("Quest/Client/Q73235ClientConfig")

local this
local subIDs = Q73235ClientConfig.SubIDs
local npcs = Q73235ClientConfig.Npcs
local points = Q73235ClientConfig.Points
local datas = Q73235ClientConfig.Datas

function Q7323501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323501Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323501)
    local actor = actorMgr:GetActor("73235")
    actor:EnterSceneLookCamera({x = 1028.736, y = 419.404, z = 6041.536}, 0, 3, true, true)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId01)
    this:DestroySelf()
end

function Q7323501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323501Trigger
