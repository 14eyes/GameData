require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501228Trigger_1 = class("Q501228Trigger_1", GadgetActorProxy)
Q501228Trigger_1.defaultAlias = "Q501228Trigger_1"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501228Trigger_1:OnPostDataPrepare()
    print("Q501228Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q501228Trigger_1:OnPostComponentPrepare()
    print("Q501228Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501228Trigger_1:TriggerIn()
    print("Q501228Trigger_1 - TriggerIn")
    if actorMgr:GetActor("5012"):GetQuestVar(501228, 1) == 0 then
        actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501215, nil)
        actorMgr:GetActor("5012"):SetQuestVarByMainId(1, 1)
    end

    this:DestroySelf()
end

function Q501228Trigger_1:PreTriggerIn()
    print("Q501228Trigger_1 - PreTriggerIn")
end

function Q501228Trigger_1:LightUpTriggerIn()
    print("Q501228Trigger_1 - LightUpTriggerIn")
end

function Q501228Trigger_1:TriggerOut()
    print("Q501228Trigger_1 - TriggerOut")
end

return Q501228Trigger_1
