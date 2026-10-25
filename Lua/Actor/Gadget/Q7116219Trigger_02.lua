require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7116219Trigger_02 = class("Q7116219Trigger_02", GadgetActorProxy)
Q7116219Trigger_02.defaultAlias = "Q7116219Trigger_02"
local Q71162ClientConfig = require("Quest/Client/Q71162ClientConfig")

local this
local subIDs = Q71162ClientConfig.SubIDs
local datas = Q71162ClientConfig.Datas
local npcs = Q71162ClientConfig.Npcs
local points = Q71162ClientConfig.Points

function Q7116219Trigger_02:OnPostDataPrepare()
    print("Q7116219Trigger_02 - OnPostDataPrepare")
    this = self
end

function Q7116219Trigger_02:OnPostComponentPrepare()
    print("Q7116219Trigger_02 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71162)
end

function Q7116219Trigger_02:TriggerIn()
    print("Q7116219Trigger_02 - TriggerIn")
    actorMgr:GetActor("71162"):QuestNarratorTask(datas.NarratorWithId7116207, nil)
    this:DestroySelf()
end

function Q7116219Trigger_02:PreTriggerIn()
    print("Q7116219Trigger_02 - PreTriggerIn")
end

function Q7116219Trigger_02:LightUpTriggerIn()
    print("Q7116219Trigger_02 - LightUpTriggerIn")
end

function Q7116219Trigger_02:TriggerOut()
    print("Q7116219Trigger_02 - TriggerOut")
end

return Q7116219Trigger_02
