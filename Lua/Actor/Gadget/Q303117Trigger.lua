require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303117Trigger = class("Q303117Trigger", GadgetActorProxy)
Q303117Trigger.defaultAlias = "Q303117Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303117Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303117Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 20, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303117Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 3031)
    this:DestroySelf()
end

function Q303117Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303117Trigger
