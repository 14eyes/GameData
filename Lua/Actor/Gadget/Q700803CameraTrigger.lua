require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700803CameraTrigger = class("Q700803CameraTrigger", GadgetActorProxy)
Q700803CameraTrigger.defaultAlias = "Q700803CameraTrigger"
local Q7008ClientConfig = require("Quest/Client/Q7008ClientConfig")

local this
local subIDs = Q7008ClientConfig.SubIDs
local datas = Q7008ClientConfig.Datas
local npcs = Q7008ClientConfig.Npcs
local points = Q7008ClientConfig.Points

function Q700803CameraTrigger:OnPostDataPrepare()
    print("Q700803CameraTrigger - OnPostDataPrepare")
    this = self
end

function Q700803CameraTrigger:OnPostComponentPrepare()
    print("Q700803CameraTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7008)
end

function Q700803CameraTrigger:TriggerIn()
    print("Q700803CameraTrigger - TriggerIn")
    actorMgr:GetActor("7008"):QuestNarratorTask(datas.Q700803Kaiche, function(arg1)
        actorUtils.FinishQuestID(false, 700803)
        this:DestroySelf()
    end)
end

function Q700803CameraTrigger:PreTriggerIn()
    print("Q700803CameraTrigger - PreTriggerIn")
end

function Q700803CameraTrigger:LightUpTriggerIn()
    print("Q700803CameraTrigger - LightUpTriggerIn")
end

function Q700803CameraTrigger:TriggerOut()
    print("Q700803CameraTrigger - TriggerOut")
end

return Q700803CameraTrigger
