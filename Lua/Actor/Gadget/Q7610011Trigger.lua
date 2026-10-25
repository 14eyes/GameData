require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610011Trigger = class("Q7610011Trigger", GadgetActorProxy)
Q7610011Trigger.defaultAlias = "Q7610011Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610011Trigger:OnPostDataPrepare()
    print("Q7610011Trigger - OnPostDataPrepare")
    this = self
end

function Q7610011Trigger:OnPostComponentPrepare()
    print("Q7610011Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(17.183704, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610011Trigger:TriggerIn()
    print("Q7610011Trigger - TriggerIn")
    actorMgr:GetActor("76100"):QuestNarratorTask(datas.NarratorWithId_761001199, nil)
    this:DestroySelf()
end

function Q7610011Trigger:PreTriggerIn()
    print("Q7610011Trigger - PreTriggerIn")
end

function Q7610011Trigger:LightUpTriggerIn()
    print("Q7610011Trigger - LightUpTriggerIn")
end

function Q7610011Trigger:TriggerOut()
    print("Q7610011Trigger - TriggerOut")
end

return Q7610011Trigger
