require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300108Trigger = class("Q1300108Trigger", GadgetActorProxy)
Q1300108Trigger.defaultAlias = "Q1300108Trigger"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300108Trigger:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300108Trigger] OnPostDataPrepare")
    this = self
end

function Q1300108Trigger:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300108Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(28, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300108Trigger:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300108Trigger] TriggerIn")
    print("voicehelp---------------------------1300108")
    actorMgr:GetActor("13001"):NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 13001)
    print("voicehelp002---------------------------1300108")
    this:DestroySelf()
end

function Q1300108Trigger:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300108Trigger] TriggerOut")
end

return Q1300108Trigger
