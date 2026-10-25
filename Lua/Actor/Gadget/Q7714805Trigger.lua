require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714805Trigger = class("Q7714805Trigger", GadgetActorProxy)
Q7714805Trigger.defaultAlias = "Q7714805Trigger"
local Q77148ClientConfig = require("Quest/Client/Q77148ClientConfig")

local this
local subIDs = Q77148ClientConfig.SubIDs
local datas = Q77148ClientConfig.Datas
local npcs = Q77148ClientConfig.Npcs
local points = Q77148ClientConfig.Points

function Q7714805Trigger:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    actorMgr:GetActor("77148"):CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Q7714805Trigger:OnPostDataPrepare()
    print("Q7714805Trigger - OnPostDataPrepare")
    this = self
end

function Q7714805Trigger:OnPostComponentPrepare()
    print("Q7714805Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77148)
end

function Q7714805Trigger:TriggerIn()
    print("Q7714805Trigger - TriggerIn")
    actorMgr:GetActor("77148"):QuestNarratorTask(datas.NarratorWithId_97714801, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7714805, 0, 30, 1, npcs.Npc22476.id)
        this:DestroySelf()
    end)
end

function Q7714805Trigger:PreTriggerIn()
    print("Q7714805Trigger - PreTriggerIn")
end

function Q7714805Trigger:LightUpTriggerIn()
    print("Q7714805Trigger - LightUpTriggerIn")
end

function Q7714805Trigger:TriggerOut()
    print("Q7714805Trigger - TriggerOut")
end

return Q7714805Trigger
