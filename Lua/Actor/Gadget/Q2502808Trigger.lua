require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2502808Trigger = class("Q2502808Trigger", GadgetActorProxy)
Q2502808Trigger.defaultAlias = "Q2502808Trigger"
local Q25028ClientConfig = require("Quest/Client/Q25028ClientConfig")

local this
local subIDs = Q25028ClientConfig.SubIDs
local datas = Q25028ClientConfig.Datas
local npcs = Q25028ClientConfig.Npcs
local points = Q25028ClientConfig.Points

function Q2502808Trigger:OnPostDataPrepare()
    print("Q2502808Trigger - OnPostDataPrepare")
    this = self
end

function Q2502808Trigger:OnPostComponentPrepare()
    print("Q2502808Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25028)
end

function Q2502808Trigger:TriggerIn()
    print("Q2502808Trigger - TriggerIn")
    local questGlobalVar = actorMgr:GetActor("25028"):GetQuestGlobalVar(2502802)
    if questGlobalVar == 0 then
        actorMgr:GetActor("25028"):QuestNarratorTask(datas.NarratorWithId_2502801, nil)
        this:DestroySelf()
    elseif questGlobalVar == 1 then
        actorMgr:GetActor("25028"):QuestNarratorTask(datas.NarratorWithId_2502803, nil)
        this:DestroySelf()
    end
end

function Q2502808Trigger:PreTriggerIn()
    print("Q2502808Trigger - PreTriggerIn")
end

function Q2502808Trigger:LightUpTriggerIn()
    print("Q2502808Trigger - LightUpTriggerIn")
end

function Q2502808Trigger:TriggerOut()
    print("Q2502808Trigger - TriggerOut")
end

return Q2502808Trigger
