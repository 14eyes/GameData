require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500603TriggerNar1 = class("Q500603TriggerNar1", GadgetActorProxy)
Q500603TriggerNar1.defaultAlias = "Q500603TriggerNar1"
local Q5006ClientConfig = require("Quest/Client/Q5006ClientConfig")

local this
local subIDs = Q5006ClientConfig.SubIDs
local datas = Q5006ClientConfig.Datas
local npcs = Q5006ClientConfig.Npcs
local points = Q5006ClientConfig.Points

function Q500603TriggerNar1:OnPostDataPrepare()
    print("Q500603TriggerNar1 - OnPostDataPrepare")
    this = self
end

function Q500603TriggerNar1:OnPostComponentPrepare()
    print("Q500603TriggerNar1 - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5006)
end

function Q500603TriggerNar1:TriggerIn()
    print("Q500603TriggerNar1 - TriggerIn")
    actorMgr:GetActor("5006"):NarratorOnlyTaskByDataWithPriority(datas.NarratorWithId_500601, 5006, 0)
    this:DestroySelf()
end

function Q500603TriggerNar1:PreTriggerIn()
    print("Q500603TriggerNar1 - PreTriggerIn")
end

function Q500603TriggerNar1:LightUpTriggerIn()
    print("Q500603TriggerNar1 - LightUpTriggerIn")
end

function Q500603TriggerNar1:TriggerOut()
    print("Q500603TriggerNar1 - TriggerOut")
end

return Q500603TriggerNar1
