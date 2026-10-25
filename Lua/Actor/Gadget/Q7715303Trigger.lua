require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7715303Trigger = class("Q7715303Trigger", GadgetActorProxy)
Q7715303Trigger.defaultAlias = "Q7715303Trigger"
local Q77153ClientConfig = require("Quest/Client/Q77153ClientConfig")

local this
local subIDs = Q77153ClientConfig.SubIDs
local datas = Q77153ClientConfig.Datas
local npcs = Q77153ClientConfig.Npcs

function Q7715303Trigger:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    actorMgr:GetActor("77153"):CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Q7715303Trigger:OnPostDataPrepare()
    print("Q7715303Trigger - OnPostDataPrepare")
    this = self
end

function Q7715303Trigger:OnPostComponentPrepare()
    print("Q7715303Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77153)
end

function Q7715303Trigger:TriggerIn()
    print("Q7715303Trigger - TriggerIn")
    actorMgr:GetActor("77153"):QuestNarratorTask(datas.NarratorWithId_97715303, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7715303, 0, 50, 1, npcs.Npc22476.id)
        this:DestroySelf()
    end)
end

function Q7715303Trigger:PreTriggerIn()
    print("Q7715303Trigger - PreTriggerIn")
end

function Q7715303Trigger:LightUpTriggerIn()
    print("Q7715303Trigger - LightUpTriggerIn")
end

function Q7715303Trigger:TriggerOut()
    print("Q7715303Trigger - TriggerOut")
end

return Q7715303Trigger
