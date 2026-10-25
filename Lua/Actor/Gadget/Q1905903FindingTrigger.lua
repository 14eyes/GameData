require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905903FindingTrigger = class("Q1905903FindingTrigger", GadgetActorProxy)
Q1905903FindingTrigger.defaultAlias = "Q1905903FindingTrigger"
local Q19059ClientConfig = require("Quest/Client/Q19059ClientConfig")

local this
local subIDs = Q19059ClientConfig.SubIDs
local npcs = Q19059ClientConfig.Npcs
local points = Q19059ClientConfig.Points
local datas = Q19059ClientConfig.Datas

function Q1905903FindingTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1905903FindingTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(17.09081, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1905903FindingTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19059")
    actor:EnterSceneLookCamera({x = -1995.638, y = 202.455, z = 2593.775}, 1.2, 7, true, true)
    actor:EnablePlayerInputByQuest(false)
    actor:NarratorOnlyTaskByData(datas.Narrator_1905902, function(arg1)
        actorMgr:GetActor("19059"):EnablePlayerInputByQuest(true)
        this:DestroySelf()
    end, 19059)
end

function Q1905903FindingTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1905903FindingTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1905903FindingTrigger:TriggerOut()
    print("TriggerOut")
end

return Q1905903FindingTrigger
