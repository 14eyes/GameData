require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501116Trigger = class("Q501116Trigger", GadgetActorProxy)
Q501116Trigger.defaultAlias = "Q501116Trigger"
local Q5011ClientConfig = require("Quest/Client/Q5011ClientConfig")

local this
local subIDs = Q5011ClientConfig.SubIDs
local datas = Q5011ClientConfig.Datas
local npcs = Q5011ClientConfig.Npcs
local points = Q5011ClientConfig.Points

function Q501116Trigger:OnPostDataPrepare()
    print("Q501116Trigger - OnPostDataPrepare")
    this = self
end

function Q501116Trigger:OnPostComponentPrepare()
    print("Q501116Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5011)
end

function Q501116Trigger:TriggerIn()
    print("Q501116Trigger - TriggerIn")
    actorMgr:GetActor("5011"):QuestNarratorTask(datas.NarratorWithId_501110, function(arg1)
        actorMgr:GetActor("5011"):CallDelayByQuest("501116", 2, function(arg1)
            actorMgr:GetActor("5011"):QuestNarratorTask(datas.NarratorWithId_501111, nil)
        end)

        this:DestroySelf()
    end)
end

function Q501116Trigger:PreTriggerIn()
    print("Q501116Trigger - PreTriggerIn")
end

function Q501116Trigger:LightUpTriggerIn()
    print("Q501116Trigger - LightUpTriggerIn")
end

function Q501116Trigger:TriggerOut()
    print("Q501116Trigger - TriggerOut")
end

return Q501116Trigger
