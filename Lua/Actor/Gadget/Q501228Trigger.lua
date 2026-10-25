require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501228Trigger = class("Q501228Trigger", GadgetActorProxy)
Q501228Trigger.defaultAlias = "Q501228Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501228Trigger:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Q501228Trigger:OnPostDataPrepare()
    print("Q501228Trigger - OnPostDataPrepare")
    this = self
end

function Q501228Trigger:OnPostComponentPrepare()
    print("Q501228Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501228Trigger:TriggerIn()
    print("Q501228Trigger - TriggerIn")
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501215, nil)
    this:ActorDestroy("Q501228Trigger_1")
    actorMgr:GetActor("5012"):SetQuestVarByMainId(1, 1)
    this:DestroySelf()
end

function Q501228Trigger:PreTriggerIn()
    print("Q501228Trigger - PreTriggerIn")
end

function Q501228Trigger:LightUpTriggerIn()
    print("Q501228Trigger - LightUpTriggerIn")
end

function Q501228Trigger:TriggerOut()
    print("Q501228Trigger - TriggerOut")
end

return Q501228Trigger
