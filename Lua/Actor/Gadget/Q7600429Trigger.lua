require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600429Trigger = class("Q7600429Trigger", GadgetActorProxy)
Q7600429Trigger.defaultAlias = "Q7600429Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600429Trigger:OnPostDataPrepare()
    print("Q7600429Trigger - OnPostDataPrepare")
    this = self
end

function Q7600429Trigger:OnPostComponentPrepare()
    print("Q7600429Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600429Trigger:TriggerIn()
    print("Q7600429Trigger - TriggerIn")
    actorMgr:GetActor("76004"):QuestNarratorTask(datas.NarratorWithId_1, nil)
    this:DestroySelf()
end

function Q7600429Trigger:PreTriggerIn()
    print("Q7600429Trigger - PreTriggerIn")
end

function Q7600429Trigger:LightUpTriggerIn()
    print("Q7600429Trigger - LightUpTriggerIn")
end

function Q7600429Trigger:TriggerOut()
    print("Q7600429Trigger - TriggerOut")
end

return Q7600429Trigger
