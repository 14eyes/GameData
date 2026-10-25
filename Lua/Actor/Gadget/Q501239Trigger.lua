require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501239Trigger = class("Q501239Trigger", GadgetActorProxy)
Q501239Trigger.defaultAlias = "Q501239Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501239Trigger:OnPostDataPrepare()
    print("Q501239Trigger - OnPostDataPrepare")
    this = self
end

function Q501239Trigger:OnPostComponentPrepare()
    print("Q501239Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501239Trigger:TriggerIn()
    print("Q501239Trigger - TriggerIn")
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501203, nil)
    this:DestroySelf()
end

function Q501239Trigger:PreTriggerIn()
    print("Q501239Trigger - PreTriggerIn")
end

function Q501239Trigger:LightUpTriggerIn()
    print("Q501239Trigger - LightUpTriggerIn")
end

function Q501239Trigger:TriggerOut()
    print("Q501239Trigger - TriggerOut")
end

return Q501239Trigger
