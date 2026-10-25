require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502013_trigger02 = class("Q1502013_trigger02", GadgetActorProxy)
Q1502013_trigger02.defaultAlias = "Q1502013_trigger02"
local Q15020ClientConfig = require("Quest/Client/Q15020ClientConfig")

local this
local subIDs = Q15020ClientConfig.SubIDs
local datas = Q15020ClientConfig.Datas
local npcs = Q15020ClientConfig.Npcs
local points = Q15020ClientConfig.Points

function Q1502013_trigger02:OnPostDataPrepare()
    print("Q1502013_trigger02 - OnPostDataPrepare")
    this = self
end

function Q1502013_trigger02:OnPostComponentPrepare()
    print("Q1502013_trigger02 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15020)
end

function Q1502013_trigger02:TriggerIn()
    print("Q1502013_trigger02 - TriggerIn")
    actorMgr:GetActor("15020"):QuestNarratorTask(datas.NarratorWithId_1502002, nil)
    this:DestroySelf()
end

function Q1502013_trigger02:PreTriggerIn()
    print("Q1502013_trigger02 - PreTriggerIn")
end

function Q1502013_trigger02:LightUpTriggerIn()
    print("Q1502013_trigger02 - LightUpTriggerIn")
end

function Q1502013_trigger02:TriggerOut()
    print("Q1502013_trigger02 - TriggerOut")
end

return Q1502013_trigger02
