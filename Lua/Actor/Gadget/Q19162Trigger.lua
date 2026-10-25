require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19162Trigger = class("Q19162Trigger", GadgetActorProxy)
Q19162Trigger.defaultAlias = "Q19162Trigger"
local Q19162ClientConfig = require("Quest/Client/Q19162ClientConfig")

local this
local subIDs = Q19162ClientConfig.SubIDs
local npcs = Q19162ClientConfig.Npcs
local points = Q19162ClientConfig.Points
local datas = Q19162ClientConfig.Datas

function Q19162Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19162Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19162Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1916201)
    this:DestroySelf()
end

function Q19162Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q19162Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q19162Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19162Trigger
